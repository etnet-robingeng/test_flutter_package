import 'package:app_family_materials/family_colors.dart';
import 'package:flutter/material.dart';

class CircleImageButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String title;
  final VoidCallback? onTap;
  final bool loading;

  const CircleImageButton({super.key, this.height, this.width, required this.title, this.onTap, this.loading = false});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(color: FamilyColors.getPrimaryColor(600), borderRadius: BorderRadius.circular(30)),
          child:
              loading
                  ? Center(child: CircularProgressIndicator(color: Colors.white))
                  : Center(
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
        ),
      ),
    );
  }
}
