import 'package:aura_box/aura_box.dart';
import 'package:flutter/material.dart';

class GradientBody extends StatelessWidget {
  const GradientBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: const EdgeInsets.only(top: 120),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: AuraBox(
        decoration: const BoxDecoration(
          color: Color(0xff094690),
        ),
        spots: [
          AuraSpot(
            color: const Color(0xff094690),
            radius: 540,
            alignment: const Alignment(0, 0.2),
            blurRadius: 30,
          ),
          AuraSpot(
            color: const Color(0xff1153a3),
            radius: 500,
            alignment: const Alignment(0, 0.2),
            blurRadius: 20,
          ),
          AuraSpot(
            color: const Color(0xff0660d4),
            radius: 460,
            alignment: const Alignment(0, 0.2),
            blurRadius: 30,
          ),
          AuraSpot(
            color: const Color(0xff1b7dec),
            radius: 420,
            alignment: const Alignment(0, 0.2),
            blurRadius: 30,
          ),
          AuraSpot(
            color: const Color(0xff3784dd),
            radius: 380,
            alignment: const Alignment(0, 0.2),
            blurRadius: 30,
          ),
          AuraSpot(
            color: const Color(0xff3a82d4),
            radius: 340,
            alignment: const Alignment(0, 0.2),
            blurRadius: 30,
          ),
          AuraSpot(
            color: const Color(0xff63a0f0),
            radius: 300,
            alignment: const Alignment(0, 0.2),
            blurRadius: 30,
          ),
          AuraSpot(
            color: const Color(0xffd8a07b),
            radius: 280,
            alignment: const Alignment(0, 0.2),
            blurRadius: 100,
          ),
          AuraSpot(
            color: const Color(0xffd49063),
            radius: 200,
            alignment: const Alignment(0, 0.2),
            blurRadius: 50,
          ),
          AuraSpot(
            color: const Color(0xffee7525),
            radius: 180,
            alignment: const Alignment(0, 0.2),
            blurRadius: 50,
          ),
          AuraSpot(
            color: const Color(0xffdf500d),
            radius: 100,
            alignment: const Alignment(0, 0.2),
            blurRadius: 20,
          ),
          AuraSpot(
            color: const Color(0xffec2424),
            radius: 60,
            alignment: const Alignment(0, 0.2),
            blurRadius: 30,
          ),
        ],
        child: const SizedBox(),
      ),
    );
  }
}
