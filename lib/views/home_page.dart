import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import 'package:my_portfolio/widgets/profile_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var socialBI;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildHomePersonalInfo(size),
          Constants.sizedBox(height: 25.0),
          const ProfileAnimation()
        ],
      ),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size)),
          const ProfileAnimation(),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size)),
          const ProfileAnimation(),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: Colors.transparent,
    );
  }

  Column buildHomePersonalInfo(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
       Text(
            'Hello, It\'s Me',
            style: AppTextStyles.smallheadingStyles(color: Colors.white),
        ),
        Constants.sizedBox(height: 15.0),
        Text(
            'Vamsi Krishna Bendalam',
            style: AppTextStyles.headingStyles(color: Colors.lightBlueAccent),
        ),
        Constants.sizedBox(height: 15.0),
        Text(
          'And I\'m a ',
          style: AppTextStyles.smallheadingStyles(color: Colors.white),
        ),
        AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'Ab Initio Developer',
                    textStyle:
                        AppTextStyles.headingStyles(color: Colors.lightBlue),
                  ),
                  TyperAnimatedText('Flutter Developer',
                      textStyle: AppTextStyles.headingStyles(
                          color: Colors.lightBlue)),
                  TyperAnimatedText('Data Engineer',
                      textStyle: AppTextStyles.headingStyles(
                          color: Colors.lightBlue))
                ],
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                ),
        Constants.sizedBox(height: 15.0),
        SizedBox(
          child: Text(
              'Skills: Ab Initio, UNIX, SQL, ETL, Informatica, Snowflake, Control M Job Scheduling, GIT, Agile Methodology, Jenkins,'
              ' Web and App development (Flutter framework), SEO Optimization, AI & ML',
              style: AppTextStyles.desctempStyle(),
            ),
        ),
        Constants.sizedBox(height: 22.0),
        SizedBox(
          height: 48,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Constants.sizedBox(height: 30.0),
              Builder(
                  builder: (index) {
                    return InkWell(
                      onTap: () { launchUrl(Uri.parse('https://github.com/vamsikrishnabendalam'));},
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            socialBI = index;
                          } else {
                            socialBI = null;
                          }
                        });
                      },
                      borderRadius: BorderRadius.circular(550.0),
                      hoverColor: AppColors.themeColor,
                      splashColor: AppColors.lawGreen,
                      child: buildSocialButton(
                          asset: AppAssets.github,
                          hover: socialBI == index ? true : false),
                    );
                  }
              ),
              Constants.sizedBox(width: 10.0),
              Builder(
                  builder: (index) {
                    return InkWell(
                      onTap: () { launchUrl(Uri.parse('https://www.linkedin.com/in/vamsi-krishna-bendalam-60844215a/'));},
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            socialBI = index;
                          } else {
                            socialBI = null;
                          }
                        });
                      },
                      borderRadius: BorderRadius.circular(550.0),
                      hoverColor: AppColors.themeColor,
                      splashColor: AppColors.lawGreen,
                      child: buildSocialButton(
                          asset: AppAssets.linkedIn,
                          hover: socialBI == index ? true : false),
                    );
                  }
              ),
              Constants.sizedBox(width: 10.0),
              Builder(
                  builder: (index) {
                    return InkWell(
                      onTap: () { launchUrl(Uri.parse('https://twitter.com/krishthedevil'));},
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            socialBI = index;
                          } else {
                            socialBI = null;
                          }
                        });
                      },
                      borderRadius: BorderRadius.circular(550.0),
                      hoverColor: AppColors.themeColor,
                      splashColor: AppColors.lawGreen,
                      child: buildSocialButton(
                          asset: AppAssets.twitter,
                          hover: socialBI == index ? true : false),
                    );
                  }
              ),
              Constants.sizedBox(width: 10.0),
              Builder(
                  builder: (index) {
                    return InkWell(
                      onTap: () { launchUrl(Uri.parse('https://www.facebook.com/vamsikrishna.bendalam/'));},
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            socialBI = index;
                          } else {
                            socialBI = null;
                          }
                        });
                      },
                      borderRadius: BorderRadius.circular(550.0),
                      hoverColor: AppColors.themeColor,
                      splashColor: AppColors.lawGreen,
                      child: buildSocialButton(
                          asset: AppAssets.facebook,
                          hover: socialBI == index ? true : false),
                    );
                  }
              ),
              Constants.sizedBox(width: 10.0),
              Builder(
                  builder: (index) {
                    return InkWell(
                      onTap: () { launchUrl(Uri.parse('https://www.instagram.com/krish_the_devil_/'));},
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            socialBI = index;
                          } else {
                            socialBI = null;
                          }
                        });
                      },
                      borderRadius: BorderRadius.circular(550.0),
                      hoverColor: AppColors.themeColor,
                      splashColor: AppColors.lawGreen,
                      child: buildSocialButton(
                          asset: AppAssets.insta,
                          hover: socialBI == index ? true : false),
                    );
                  }
              ),
            ],
          ),
          /* child: ListView.separated(
            itemCount: socialButtons.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, child) =>
                Constants.sizedBox(width: 8.0),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () { launchUrl(Uri.parse(sociallinks[index]));},
                onHover: (value) {
                  setState(() {
                    if (value) {
                      socialBI = index;
                    } else {
                      socialBI = null;
                    }
                  });
                },
                borderRadius: BorderRadius.circular(550.0),
                hoverColor: AppColors.themeColor,
                splashColor: AppColors.lawGreen,
                child: buildSocialButton(
                    asset: socialButtons[index],
                    links: sociallinks[index],
                    hover: socialBI == index ? true : false),
              );
            },
          ),*/
        ),
        Constants.sizedBox(height: 18.0),
        AppButtons.buildMaterialButton(
              onTap: () { launchUrl(Uri.parse('https://drive.google.com/file/d/1_rGPTxhjlg0t85cZBUQttouIJDDuoUpJ/view'));},
              buttonName: 'VIEW/DOWNLOAD RESUME'),
      ],
    );
  }

  Ink buildSocialButton({required String asset, required bool hover}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: Image.asset(
        asset,
        width: 10,
        height: 12,
        color: hover ? AppColors.bgColor : AppColors.themeColor,
        // fit: BoxFit.fill,
      ),
    );
  }
}
