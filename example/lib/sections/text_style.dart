import 'package:flutter/material.dart';
import 'package:app_family_materials/family_textStyles.dart';

class TextStylePage extends StatelessWidget {
  const TextStylePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styles'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Headline Styles:', style: FamilyTextStyle.LHeadlineSemiBold),
              const SizedBox(height: 16),
              Text('Small Headline Regular', style: FamilyTextStyle.SHeadlineRegular),
              Text('Small Headline Medium', style: FamilyTextStyle.SHeadlineMedium),
              Text('Small Headline SemiBold', style: FamilyTextStyle.SHeadlineSemiBold),
              const SizedBox(height: 8),
              Text('Medium Headline Regular', style: FamilyTextStyle.MHeadlineRegular),
              Text('Medium Headline Medium', style: FamilyTextStyle.MHeadlineMedium),
              Text('Medium Headline SemiBold', style: FamilyTextStyle.MHeadlineSemiBold),
              const SizedBox(height: 8),
              Text('Large Headline Regular', style: FamilyTextStyle.LHeadlineRegular),
              Text('Large Headline Medium', style: FamilyTextStyle.LHeadlineMedium),
              Text('Large Headline SemiBold', style: FamilyTextStyle.LHeadlineSemiBold),
              const SizedBox(height: 24),
              Text('Body Styles:', style: FamilyTextStyle.LHeadlineSemiBold),
              const SizedBox(height: 16),
              Text('Small Body Regular', style: FamilyTextStyle.SBodyRegular),
              Text('Small Body Medium', style: FamilyTextStyle.SBodyMedium),
              Text('Small Body SemiBold', style: FamilyTextStyle.SBodySemiBold),
              const SizedBox(height: 8),
              Text('Medium Body Regular', style: FamilyTextStyle.MBodyRegular),
              Text('Medium Body Medium', style: FamilyTextStyle.MBodyMedium), 
              Text('Medium Body SemiBold', style: FamilyTextStyle.MBodySemiBold),
              const SizedBox(height: 8),
              Text('Large Body Regular', style: FamilyTextStyle.LBodyRegular),
              Text('Large Body Medium', style: FamilyTextStyle.LBodyMedium),
              Text('Large Body SemiBold', style: FamilyTextStyle.LBodySemiBold),
            ],
          ),
        ),
      ),
    );
  }
}
