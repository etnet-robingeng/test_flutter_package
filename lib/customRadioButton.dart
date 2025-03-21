import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

class CustomRadioButton extends LeafRenderObjectWidget {
  const CustomRadioButton({
    super.key,
    this.strokeWidth = 20.0,
    this.value = false,
    this.strokeColor,
    this.canvasColor,
    this.centerColor,
    this.radius = 10.0,
    this.onChanged,
  });

  final double strokeWidth;
  final Color? strokeColor;
  final Color? canvasColor;
  final Color? centerColor;
  final bool value;
  final double radius;
  final ValueChanged<bool>? onChanged;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderCustomRadioButton(
      strokeWidth,
      strokeColor ?? Theme.of(context).colorScheme.primary,
      canvasColor ?? Theme.of(context).canvasColor,
      centerColor ?? Theme.of(context).colorScheme.surface,
      value,
      radius,
      onChanged,
    );
  }

  @override
  void updateRenderObject(context, RenderCustomRadioButton renderObject) {
    if (renderObject.value != value) {
      renderObject.animationStatus = value ? AnimationStatus.forward : AnimationStatus.reverse;
    }
    renderObject
      ..strokeWidth = strokeWidth
      ..strokeColor = strokeColor ?? Theme.of(context).colorScheme.primary
      ..canvasColor = canvasColor ?? Theme.of(context).canvasColor
      ..centerColor = centerColor ?? Theme.of(context).colorScheme.surface
      ..radius = radius
      ..value = value
      ..onChanged = onChanged;
  }
}

class RenderCustomRadioButton extends RenderBox with RenderObjectAnimationMixin {
  bool value;
  int pointerId = -1;
  double strokeWidth;
  Color strokeColor;
  Color canvasColor;
  Color centerColor;
  double radius;
  ValueChanged<bool>? onChanged;

  RenderCustomRadioButton(
    this.strokeWidth,
    this.strokeColor,
    this.canvasColor,
    this.centerColor,
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
    _drawCenterDot(context, rect);
  }

  void _drawBackground(PaintingContext context, Rect rect) {
    final center = rect.center;
    final animationProgress = min(progress, bgAnimationInterval) / bgAnimationInterval;
    if (progress > bgAnimationInterval) {
      final paint =
          Paint()
            ..color = strokeColor
            ..isAntiAlias = true
            ..style = PaintingStyle.fill;

      final animatedRadius = radius * animationProgress + 1;
      context.canvas.drawCircle(center, animatedRadius, paint);
    } else {
      final paint =
          Paint()
            ..color = canvasColor
            ..isAntiAlias = true
            ..style = PaintingStyle.stroke
            ..strokeWidth = 1.0;
      final animatedRadius = max(radius * animationProgress, radius);
      context.canvas.drawCircle(center, animatedRadius, paint);
    }
  }

  void _drawCenterDot(PaintingContext context, Rect rect) {
    if (progress > bgAnimationInterval) {
      final animationProgress = (progress - bgAnimationInterval) / (1 - bgAnimationInterval);

      final paint =
          Paint()
            ..color = centerColor
            ..isAntiAlias = true
            ..style = PaintingStyle.fill;

      final center = rect.center;

      final r = (radius / 2) * animationProgress;

      context.canvas.drawCircle(center, r, paint);
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
