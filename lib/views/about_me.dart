import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
//import 'package:url_launcher/url_launcher.dart';
//import '../globals/app_buttons.dart';
import '../globals/app_text_styles.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildAboutMeContents(),
          Constants.sizedBox(height: 35.0),
          buildProfilePicture(),
        ],
      ),
      tablet: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMeContents())
        ],
      ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMeContents())
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  FadeInRight buildProfilePicture() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Image.asset(
        AppAssets.profile2,
        height: 450,
        width: 400,
      ),
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInRight(
          duration: const Duration(milliseconds: 1200),
          child: RichText(
            text: TextSpan(
              text: 'About ',
              style: AppTextStyles.headingStyles(fontSize: 30.0),
              children: [
                TextSpan(
                  text: 'Me!',
                  style: AppTextStyles.headingStyles(
                      fontSize: 30, color: AppColors.robinEdgeBlue),
                )
              ],
            ),
          ),
        ),
        Constants.sizedBox(height: 6.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Data Engineer!',
            style: AppTextStyles.montserratStyle(
              color: AppColors.themeColor, fontSize: 32.0),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
                      '• Accomplished Data Engineer with a successful track record in leading Ab Initio migration projects and executing seamless data migrations on cloud platforms.\n\n'
                      '• Proficient in SQL, adept at navigating Generic graphs, Plans, PSETs, and intricately designed Ab Initio graphs, resulting in a 30% improvement in data processing efficiency.\n\n'
                      '• Skilled in coordinating jobs through Ab Initio Control Center and Autosys/Control M, leveraging database technologies for optimal ETL performance.\n\n'
                      '• Experienced in Flutter, a cross-platform framework which has ability to create intuitive and user-friendly interfaces, adding versatility to development skills.\n\n'
                      '• Effective utilization of JIRA, consistently contributing to a 20% acceleration in issue resolution.\n\n'
                      '• Eager to apply diverse skills and experience as an ETL Developer to contribute effectively to data integration and transformation processes.',
            style: AppTextStyles.desctempStyle(),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        /*FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButtons.buildMaterialButton(
              onTap: () {},
              buttonName: 'Read More'),
        )*/
      ],
    );
  }
}
