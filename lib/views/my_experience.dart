import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
//import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import '../globals/app_text_styles.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  bool isApp = false, isGraphic = false, isDataAnalyst = false;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isGraphic = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Capgemini',
              asset: AppAssets.capgemini,
              duration: 'July \'23 - Present',
              role: 'Associate Consultant',
              description: '•  Ab Initio developer at Capgemini working on the Barclays Bank project.\n'
                  '•  Joined during the project\'s critical final phase with an impending deadline.\n'
                  '•  Tasked with completing data transformation under a heavy workload.\n',
              hover: isGraphic,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isApp = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Accenture',
              asset: AppAssets.accenture,
              duration: 'September \'21 - July \'23',
              role: 'Data Engineering Associate',
              description:'•  Trained in Informatica and Ab Initio.\n'
                  '•  Recognized with the ACE Award for exceptional performance in Q1, FY23.\n'
                  '•  Extensive experience in Ab Initio development and migration activities.\n'
                  '•  Proficient use of tools including Control M, Jira, Snowflake, Jenkins and ServiceNow.\n',
              hover: isApp,
            ),
          ),
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isDataAnalyst = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Capgemini',
              asset: AppAssets.capgemini,
              duration: 'July \'23 - Present',
              role: 'Associate Consultant',
              description: '•  Ab Initio developer at Capgemini working on the Barclays Bank project.\n'
                  '•  Joined during the project\'s critical final phase with an impending deadline.\n'
                  '•  Tasked with completing data transformation under a heavy workload.\n',
              hover: isDataAnalyst,
              width: 725.0,
              hoverWidth: 735.0,
            ),
          ),
          Constants.sizedBox(height: 26.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isDataAnalyst = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Accenture',
              asset: AppAssets.accenture,
              duration: 'September \'21 - July \'23',
              role: 'Data Engineering Associate',
              description:'•  Trained in Informatica and Ab Initio.\n'
                  '•  Recognized with the ACE Award for exceptional performance in Q1, FY23.\n'
                  '•  Extensive experience in Ab Initio development and migration activities.\n'
                  '•  Proficient use of tools including Control M, Jira, Snowflake, Jenkins and ServiceNow.\n',
              hover: isDataAnalyst,
              width: 725.0,
              hoverWidth: 735.0,
            ),
          ),
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Capgemini',
                  asset: AppAssets.capgemini,
                  duration: 'July \'23 - Present',
                  role: 'Associate Consultant',
                  description: '•  Ab Initio developer at Capgemini working on the Barclays Bank project.\n'
                               '•  Joined during the project\'s critical final phase with an impending deadline.\n'
                               '•  Tasked with completing data transformation under a heavy workload.\n',
                  hover: isGraphic,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Accenture',
                  asset: AppAssets.accenture,
                  duration: 'September \'21 - July \'23',
                  role: 'Data Engineering Associate',
                  description: '•  Trained in Informatica and Ab Initio.\n'
                               '•  Recognized with the ACE Award for exceptional performance in Q1, FY23.\n'
                               '•  Extensive experience in Ab Initio development and migration activities.\n'
                               '•  Proficient use of tools including Control M, Jira, Snowflake, Jenkins and ServiceNow.\n',
                  hover: isApp,
                ),
              ),
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.bgColor,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child:
          RichText(
            text: TextSpan(
              text: 'My ',
              style: AppTextStyles.headingStyles(fontSize: 30.0),
              children: [
                TextSpan(
                  text: 'Journey',
                  style: AppTextStyles.headingStyles(
                      fontSize: 30.0, color: AppColors.robinEdgeBlue),
                ),
              ],
            ),
          ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required String duration,
    required String role,
    required String description,
    required bool hover,
    double width = 460,
    double hoverWidth = 480,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: hover ? hoverWidth : width,
      height: hover ? 480 : 460,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            asset,
            width: 50,
            height: 50,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 20.0),
          Text(
            title,
            style: AppTextStyles.montserratStyle(
                color: AppColors.themeColor, fontSize: 32.0),
          ),
          Constants.sizedBox(height: 12.0),
          Text(
            duration,
            style: AppTextStyles.smallheadingStyles(
                color: Colors.white, fontSize: 18.0),
          ),
          Constants.sizedBox(height: 12.0),
          Text(
            role,
            style: AppTextStyles.smallheadingStyles(
                color: Colors.white, fontSize: 18.0),
          ),
          Constants.sizedBox(height: 16.0),
          Text(
            description,
            style: AppTextStyles.desctempStyle(fontSize: 16.0),
            textAlign: TextAlign.left,
          ),
          Constants.sizedBox(height: 20.0),
         // AppButtons.buildMaterialButton(buttonName: 'View related project', onTap: () {})
        ],
      ),
    );
  }
}
