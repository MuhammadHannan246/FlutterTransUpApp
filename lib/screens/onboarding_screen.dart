import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_transup_app/theme/colors.dart';

class OnboardingScreen extends StatefulWidget {
  static const routeName = '/onboarding-screen';

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      'image': 'assets/images/seo.svg',
      'title': 'Welcome to TransUp',
      'description':
          'Experience the best translation and transcription services with a single tap.',
    },
    {
      'image': 'assets/images/communication.svg',
      'title': 'Effortless Communication',
      'description': 'Communicate across languages with ease and precision.',
    },
    {
      'image': 'assets/images/security.svg',
      'title': 'Your Security Matters',
      'description':
          'We prioritize your data privacy and security with top-notch encryption.',
    },
  ];

  void nextOnboarding() {
    if (currentIndex < onboardingData.length - 1) {
      setState(() {
        currentIndex += 1;
      });
    } else {
      // Navigate to the next screen or home screen
    }
  }

  void previousOnboarding() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      SvgPicture.asset(
                        onboardingData[currentIndex]['image']!,
                        height: 250,
                        width: 250,
                      ),
                      const SizedBox(height: 30),
                      Text(
                        onboardingData[currentIndex]['title']!,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: kSecondarySwatchColor,
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        onboardingData[currentIndex]['description']!,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: kTextColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingData.length,
                (index) => buildDot(index, context),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: previousOnboarding,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(color: kSecondarySwatchColor),
                    ),
                    child: Text(
                      'Back',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: kSecondarySwatchColor,
                          ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: nextOnboarding,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(color: kPrimarySwatchColor),
                    ),
                    child: Text(
                      'Next',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: kPrimarySwatchColor,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 20 : 10,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: currentIndex == index
            ? kSecondarySwatchColor
            : kSecondarySwatchColor.withOpacity(0.5),
      ),
    );
  }
}
