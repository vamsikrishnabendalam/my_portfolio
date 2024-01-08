import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_colors.dart';

import '../globals/app_text_styles.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
        color: AppColors.bgColor,
        alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Text(
            '© 2023 Vamsi Krishna Bendalam \" This Website is Developed using Flutter \". All the Images and Logo\'s are just for reference purposes.',
            style: AppTextStyles.desctempStyle(color: Colors.white54),
            textAlign: TextAlign.center,
          ),
    );
  }
}
