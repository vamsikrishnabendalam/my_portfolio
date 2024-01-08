import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';
import '../globals/app_assets.dart';
import '../globals/app_buttons.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';
import '../helper class/helper_class.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
  }

class _EducationState extends State<Education> {
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
                isApp = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Saveetha University',
              asset: AppAssets.saveetha,
              duration: 'June \'17 - September \'21',
              role: 'Bachelor of Engineering \nComputer Science',
              description:'•  Executed a Image Recognition project using Machine Learning during the program.\n•  Gained comprehensive knowledge in software development, algorithms and problem-solving.',
              projectUrl :'https://drive.google.com/file/d/11nVdgHUTDVIXv4hqm0mT9fGbr79vFVbe/view?usp=sharing',
              hover: isApp,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isGraphic = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Redcaps Solutions',
              asset: AppAssets.redcaps,
              duration: 'July \'20 - October \'20',
              role: 'Intern',
              description:'•  Internship involved mobile application development using Flutter framework and Amazon Web Services.\n•  Contributed to the implementation of new functionalities in mobile applications.\n•  Actively participated in troubleshooting day-to-day issues in mobile applications.',
              projectUrl :'https://drive.google.com/file/d/15hJXHCX82aB1ru1pe7z0FVbhrRlZsp5N/view?usp=sharing',
              hover: isGraphic,
            ),
          )
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
              title: 'Saveetha University',
              asset: AppAssets.saveetha,
              duration: 'June \'17 - September \'21',
              role: 'Bachelor of Engineering \nComputer Science',
              description:'•  Executed a Image Recognition project using Machine Learning during the program.\n•  Gained comprehensive knowledge in software development, algorithms and problem-solving.',
              projectUrl :'https://drive.google.com/file/d/11nVdgHUTDVIXv4hqm0mT9fGbr79vFVbe/view?usp=sharing',
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
              title: 'Redcaps Solutions',
              asset: AppAssets.redcaps,
              duration: 'July \'20 - October \'20',
              role: 'Intern',
              description:'•  Internship involved mobile application development using Flutter framework and Amazon Web Services.\n•  Contributed to the implementation of new functionalities in mobile applications.\n•  Actively participated in troubleshooting day-to-day issues in mobile applications.',
              projectUrl :'https://drive.google.com/file/d/15hJXHCX82aB1ru1pe7z0FVbhrRlZsp5N/view?usp=sharing',
              hover: isDataAnalyst,
              width: 725.0,
              hoverWidth: 735.0,
            ),
          )
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
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Saveetha University',
                  asset: AppAssets.saveetha,
                  duration: 'June \'17 - September \'21',
                  role: 'Bachelor of Engineering \nComputer Science',
                  description:'•  Executed a Image Recognition project using Machine Learning during the program.\n•  Gained comprehensive knowledge in software development, algorithms and problem-solving.',
                  projectUrl :'https://drive.google.com/file/d/11nVdgHUTDVIXv4hqm0mT9fGbr79vFVbe/view?usp=sharing',
                  hover: isApp,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Redcaps Solutions',
                  asset: AppAssets.redcaps,
                  duration: 'July \'20 - October \'20',
                  role: 'Intern',
                  description:'•  Internship involved mobile application development using Flutter framework and AWS.\n•  Contributed to the implementation and troubleshooting day-to-day issues of new functionalities in mobile applications.',
                  projectUrl :'https://drive.google.com/file/d/15hJXHCX82aB1ru1pe7z0FVbhrRlZsp5N/view?usp=sharing',
                  hover: isGraphic,
                ),
              )
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
              text: 'Education and Internships',
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
    required String projectUrl,
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
                textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 12.0),
          Text(
            description,
            style: AppTextStyles.desctempStyle(fontSize: 16.0),
            textAlign: TextAlign.left,
          ),
          Constants.sizedBox(height: 20.0),
          AppButtons.buildMaterialButton(buttonName: 'View related project', onTap: () {launchUrl(Uri.parse(projectUrl));})
        ],
      ),
    );
  }
}
