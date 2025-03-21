import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

class CustomCheckbox extends LeafRenderObjectWidget {
  const CustomCheckbox({
    super.key,
    this.tickWidth = 2.0,
    this.value = false,
    this.canvasColor,
    this.fillColor,
    this.tickColor,
    this.radius = 4.0,
    this.onChanged,
  });

  final double tickWidth; // "tick" width
  final Color? tickColor; //  "tick" color
  final Color? canvasColor; //  border color
  final Color? fillColor;
  final bool value;
  final double radius;
  final ValueChanged<bool>? onChanged;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderCustomCheckbox(
      tickWidth,
      fillColor ?? Theme.of(context).colorScheme.primary,
      tickColor ?? Theme.of(context).colorScheme.surface,
      canvasColor ?? Theme.of(context).canvasColor,
      value,
      radius,
      onChanged,
    );
  }

  @override
  void updateRenderObject(context, RenderCustomCheckbox renderObject) {
    if (renderObject.value != value) {
      renderObject.animationStatus = value ? AnimationStatus.forward : AnimationStatus.reverse;
    }
    renderObject
      ..tickWidth = tickWidth
      ..fillColor = fillColor ?? Theme.of(context).colorScheme.primary
      ..tickColor = tickColor ?? Theme.of(context).colorScheme.surface
      ..canvasColor = canvasColor ?? Theme.of(context).canvasColor
      ..radius = radius
      ..value = value
      ..onChanged = onChanged;
  }
}

class RenderCustomCheckbox extends RenderBox with RenderObjectAnimationMixin {
  bool value;
  int pointerId = -1;
  double tickWidth;
  Color tickColor;
  Color fillColor;
  Color canvasColor;
  double radius;
  ValueChanged<bool>? onChanged;

  RenderCustomCheckbox(
    this.tickWidth,
    this.tickColor,
    this.fillColor,
    this.canvasColor,
    this.value,
    this.radius,
    this.onChanged,
  ) {
    progress = value ? 1 : 0;
  }

  @override
  bool get isRepaintBoundary => true;

  final double bgAnimationInterval = .4;

  @override
  void doPaint(PaintingContext context, Offset offset) {
    Rect rect = offset & size;
    _drawBackground(context, rect);
    _drawCheckMark(context, rect);
  }

  void _drawBackground(PaintingContext context, Rect rect) {
    final rrect = RRect.fromRectXY(rect, radius, radius);

    if (progress > bgAnimationInterval) {
      final paint =
          Paint()
            ..color = fillColor
            ..isAntiAlias = true
            ..style = PaintingStyle.fill;

      context.canvas.drawRRect(rrect, paint);
    } else {
      final paint =
          Paint()
            ..color = canvasColor
            ..isAntiAlias = true
            ..style = PaintingStyle.stroke
            ..strokeWidth = 1.0;

      context.canvas.drawRRect(rrect, paint);
    }
  }

  void _drawCheckMark(PaintingContext context, Rect rect) {
    if (progress > bgAnimationInterval) {
      final secondOffset = Offset(rect.left + rect.width / 2.5, rect.bottom - rect.height / 4);
      final lastOffset = Offset(rect.right - rect.width / 6, rect.top + rect.height / 4);

      final _lastOffset =
          Offset.lerp(secondOffset, lastOffset, (progress - bgAnimationInterval) / (1 - bgAnimationInterval))!;

      final path =
          Path()
            ..moveTo(rect.left + rect.width / 7, rect.top + rect.height / 2)
            ..lineTo(secondOffset.dx, secondOffset.dy)
            ..lineTo(_lastOffset.dx, _lastOffset.dy);

      final paint =
          Paint()
            ..isAntiAlias = true
            ..style = PaintingStyle.stroke
            ..color = tickColor
            ..strokeWidth = tickWidth;

      context.canvas.drawPath(path, paint..style = PaintingStyle.stroke);
    }
  }

  @override
  void performLayout() {
    size = constraints.constrain(constraints.isTight ? Size.infinite : const Size(25, 25));
  }

  @override
  bool hitTestSelf(Offset position) => true;

  @override
  void handleEvent(PointerEvent event, covariant BoxHitTestEntry entry) {
    if (event.down) {
      pointerId = event.pointer;
    } else if (pointerId == event.pointer) {
      if (size.contains(event.localPosition)) {
        onChanged?.call(!value);
      }
    }
  }
}

mixin RenderObjectAnimationMixin on RenderObject {
  double _progress = 0;
  int? _lastTimeStamp;

  Duration get duration => const Duration(milliseconds: 200);
  AnimationStatus _animationStatus = AnimationStatus.completed;

  set animationStatus(AnimationStatus v) {
    if (_animationStatus != v) {
      markNeedsPaint();
    }
    _animationStatus = v;
  }

  double get progress => _progress;

  set progress(double v) {
    _progress = v.clamp(0, 1);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    doPaint(context, offset);
    _scheduleAnimation();
  }

  void _scheduleAnimation() {
    if (_animationStatus != AnimationStatus.completed) {
      SchedulerBinding.instance.addPostFrameCallback((Duration timeStamp) {
        if (_lastTimeStamp != null) {
          double delta = (timeStamp.inMilliseconds - _lastTimeStamp!) / duration.inMilliseconds;

          if (delta == 0) {
            markNeedsPaint();
            return;
          }

          if (_animationStatus == AnimationStatus.reverse) {
            delta = -delta;
          }
          _progress = _progress + delta;
          if (_progress >= 1 || _progress <= 0) {
            _animationStatus = AnimationStatus.completed;
            _progress = _progress.clamp(0, 1);
          }
        }
        markNeedsPaint();
        _lastTimeStamp = timeStamp.inMilliseconds;
      });
    } else {
      _lastTimeStamp = null;
    }
  }

  void doPaint(PaintingContext context, Offset offset);
}
