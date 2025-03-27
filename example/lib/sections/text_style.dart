import 'package:flutter/material.dart';
import 'package:single_child_two_dimensional_scroll_view/single_child_two_dimensional_scroll_view.dart';
import 'package:app_family_materials/family_textStyles.dart';
import 'theme_preview.dart' show ThemeAppBar;

class TextStylePage extends StatelessWidget {
  const TextStylePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ThemeAppBar(title: 'Text Styles'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildTwoDimensionalScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_buildHeadlineStyles(), const SizedBox(height: 16), _buildBodyStyles()],
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_buildHeadlineStylesEN(), const SizedBox(height: 16), _buildBodyStylesEN()],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeadlineStyles() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(FamilyTextStyle.fontFamily, style: FamilyTextStyle.LHeadlineSemiBold),
        const SizedBox(height: 16),
        Text('標題樣式:', style: FamilyTextStyle.MHeadlineSemiBold),
        const SizedBox(height: 16),
        Text('小號標題常規', style: FamilyTextStyle.SHeadlineRegular),
        const SizedBox(height: 8),
        Text('小號標題中等', style: FamilyTextStyle.SHeadlineMedium),
        const SizedBox(height: 8),
        Text('小號標題半粗體', style: FamilyTextStyle.SHeadlineSemiBold),
        const SizedBox(height: 8),
        Text('中號標題常規', style: FamilyTextStyle.MHeadlineRegular),
        const SizedBox(height: 8),
        Text('中號標題中等', style: FamilyTextStyle.MHeadlineMedium),
        const SizedBox(height: 8),
        Text('中號標題半粗體', style: FamilyTextStyle.MHeadlineSemiBold),
        const SizedBox(height: 8),
        Text('大號標題常規', style: FamilyTextStyle.LHeadlineRegular),
        const SizedBox(height: 8),
        Text('大號標題中等', style: FamilyTextStyle.LHeadlineMedium),
        const SizedBox(height: 8),
        Text('大號標題半粗體', style: FamilyTextStyle.LHeadlineSemiBold),
      ],
    );
  }

  Widget _buildBodyStyles() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('內文樣式:', style: FamilyTextStyle.LHeadlineSemiBold),
        const SizedBox(height: 16),
        Text('小號內文常規', style: FamilyTextStyle.SBodyRegular),
        const SizedBox(height: 8),
        Text('小號內文中等', style: FamilyTextStyle.SBodyMedium),
        const SizedBox(height: 8),
        Text('小號內文半粗體', style: FamilyTextStyle.SBodySemiBold),
        const SizedBox(height: 8),
        Text('中號內文常規', style: FamilyTextStyle.MBodyRegular),
        const SizedBox(height: 8),
        Text('中號內文中等', style: FamilyTextStyle.MBodyMedium),
        const SizedBox(height: 8),
        Text('中號內文半粗體', style: FamilyTextStyle.MBodySemiBold),
        const SizedBox(height: 8),
        Text('大號內文常規', style: FamilyTextStyle.LBodyRegular),
        const SizedBox(height: 8),
        Text('大號內文中等', style: FamilyTextStyle.LBodyMedium),
        const SizedBox(height: 8),
        Text('大號內文半粗體', style: FamilyTextStyle.LBodySemiBold),
      ],
    );
  }

  Widget _buildHeadlineStylesEN() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(FamilyTextStyleEN.fontFamily, style: FamilyTextStyle.LHeadlineSemiBold),
        const SizedBox(height: 16),
        Text('Headline Styles:', style: FamilyTextStyleEN.LHeadlineSemiBold),
        const SizedBox(height: 16),
        Text('Small Headline Regular 1234567890', style: FamilyTextStyleEN.SHeadlineRegular),
        const SizedBox(height: 8),
        Text('Small Headline Medium 1234567890', style: FamilyTextStyleEN.SHeadlineMedium),
        const SizedBox(height: 8),
        Text('Small Headline SemiBold 1234567890', style: FamilyTextStyleEN.SHeadlineSemiBold),
        const SizedBox(height: 8),
        Text('Medium Headline Regular 1234567890', style: FamilyTextStyleEN.MHeadlineRegular),
        const SizedBox(height: 8),
        Text('Medium Headline Medium 1234567890', style: FamilyTextStyleEN.MHeadlineMedium),
        const SizedBox(height: 8),
        Text('Medium Headline SemiBold 1234567890', style: FamilyTextStyleEN.MHeadlineSemiBold),
        const SizedBox(height: 8),
        Text('Large Headline Regular 1234567890', style: FamilyTextStyleEN.LHeadlineRegular),
        const SizedBox(height: 8),
        Text('Large Headline Medium 1234567890', style: FamilyTextStyleEN.LHeadlineMedium),
        const SizedBox(height: 8),
        Text('Large Headline SemiBold 1234567890', style: FamilyTextStyleEN.LHeadlineSemiBold),
      ],
    );
  }

  Widget _buildBodyStylesEN() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Body Styles:', style: FamilyTextStyle.LHeadlineSemiBold),
        const SizedBox(height: 16),
        Text('Small Body Regular 1234567890', style: FamilyTextStyleEN.SBodyRegular),
        const SizedBox(height: 8),
        Text('Small Body Medium 1234567890', style: FamilyTextStyleEN.SBodyMedium),
        const SizedBox(height: 8),
        Text('Small Body SemiBold 1234567890', style: FamilyTextStyleEN.SBodySemiBold),
        const SizedBox(height: 8),
        Text('Medium Body Regular 1234567890', style: FamilyTextStyleEN.MBodyRegular),
        const SizedBox(height: 8),
        Text('Medium Body Medium 1234567890', style: FamilyTextStyleEN.MBodyMedium),
        const SizedBox(height: 8),
        Text('Medium Body SemiBold 1234567890', style: FamilyTextStyleEN.MBodySemiBold),
        const SizedBox(height: 8),
        Text('Large Body Regular 1234567890', style: FamilyTextStyleEN.LBodyRegular),
        const SizedBox(height: 8),
        Text('Large Body Medium 1234567890', style: FamilyTextStyleEN.LBodyMedium),
        const SizedBox(height: 8),
        Text('Large Body SemiBold 1234567890', style: FamilyTextStyleEN.LBodySemiBold),
      ],
    );
  }
}
