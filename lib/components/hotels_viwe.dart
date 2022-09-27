import 'package:flutter/material.dart';
import 'package:nidhey/utils/app_layout.dart';
import 'package:nidhey/utils/app_styles.dart';
import 'package:nidhey/widgets/thick_container.dart';
import 'package:gap/gap.dart';

class HotelsView extends StatelessWidget {
  const HotelsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Style.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 5)
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Style.primaryColor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/one.png'))),
        ),
        const Gap(10),
        Text(
          "Open Space",
          style: Style.headLineStyle2.copyWith(color: Colors.white),
        ),
        const Gap(5),
        Text(
          "London",
          style: Style.headLineStyle3.copyWith(color: Colors.white),
        ),
        const Gap(8),
        Text(
          "\$40/night",
          style: Style.headLineStyle.copyWith(color: Colors.white),
        ),
      ]),
    );
  }
}
