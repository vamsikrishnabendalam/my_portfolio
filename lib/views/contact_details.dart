import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import 'package:url_launcher/url_launcher.dart';
import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: contactDetails(),
      tablet: contactDetails(),
      desktop: contactDetails(),
      paddingWidth: size.width * 0.2,
      bgColor: AppColors.bgColor2,
    );
  }

  Container contactDetails() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.bgColor,
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
            buildContactText(),
            Constants.sizedBox(height: 60.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Constants.sizedBox(height: 30.0),
                Icon(
                  Icons.phone,
                  color: AppColors.themeColor,
                  size: 30,
                ),
                Constants.sizedBox(width: 20.0),
                Text(
                  '+919600140801 / +917358642613',
                  style: AppTextStyles.smallheadingStyles(
                      color: Colors.white, fontSize: 18.0),
                ),
              ]
            ),
            Constants.sizedBox(height: 30.0),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Constants.sizedBox(height: 40.0),
                  Icon(
                    Icons.email,
                    color: AppColors.themeColor,
                    size: 30,
                  ),
                  Constants.sizedBox(width: 20.0),
                  Text(
                    'vamsikrishben@gmail.com',
                    style: AppTextStyles.smallheadingStyles(
                        color: Colors.white, fontSize: 18.0),
                  ),
                ]
            ),
            Constants.sizedBox(height: 30.0),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Constants.sizedBox(height: 40.0),
                  Icon(
                    Icons.location_city,
                    color: AppColors.themeColor,
                    size: 30,
                  ),
                  Constants.sizedBox(width: 20.0),
                  Text(
                    'Chennai, India',
                    style: AppTextStyles.smallheadingStyles(
                        color: Colors.white, fontSize: 18.0),
                  ),
                ]
            ),
            Constants.sizedBox(height: 40.0),
            AppButtons.buildMaterialButton(
              buttonName: 'Reach out by mail', onTap: () {launchUrl(Uri.parse('mailto:vamsikrishben@gmail.com?subject= &body= '));}),
        ],

      ),
    );
  }

  FadeInDown buildContactText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Contact ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Me! @',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }
}
