import 'package:doc_doc_app/core/style/app_colors.dart';
import 'package:doc_doc_app/core/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            spacing: 10,
            children: [
              SvgPicture.asset('assets/svgs/Logo.svg', height: 45),
              SizedBox(height: 20),
              Flexible(
                child: Stack(
                  children: [
                    SvgPicture.asset('assets/svgs/Group.svg'),

                    Container(
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.white.withValues(alpha: 0.0),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [0.14, 0.4],
                        ),
                      ),
                      child: Image.asset('assets/assets/doc_image.png'),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 10,
                      child: Text(
                        'Best Doctor\n Appointment App',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  spacing: 20,
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyle(
                        color: AppColors.bodyyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    CustomeButton(onPressed: () {}, text: ' Get Started'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
