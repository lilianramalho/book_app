import 'package:book_app/src/utils/tokens/tokens_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContainerImageBook extends StatelessWidget {
  const ContainerImageBook({super.key, required this.imageLink});

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: Container(
        width: 40.w,
        height: 25.h,
        decoration: const BoxDecoration(
          color: keppel,
          borderRadius: BorderRadius.all(Radius.circular(10)),
    
        ),
        child: Image.network(imageLink, fit: BoxFit.cover),
      ),
    );
  }
}
