import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final onH0verEffect = Matrix4.identity()..scale(1.0);

  List images = <String>[
    AppAssets.abinitio,
    AppAssets.abinitio,
    AppAssets.flutter,
    AppAssets.machine,
  ];

  final projectTitle = <String>[
    'HEALTH CARE CLIENT: BCBS-NC',
    'BANKING CLIENT: BARCLAYS BANK',
    'FLUTTER APP/WEB DEVELOPMENT',
    'IMAGE RECOGNITION USING MACHINE LEARNING',
  ];

  final projectDesc = <String>[
    '• Transforming and Loading US Health care clients Legacy data into continuous Kafka streams, AWS servers, DB2 tables and front-end applications using Ab Initio ETL tool.',
    '• Transforming client\'s sales, loans and cards data to meet specific requirements for data analytics in BI Reporting and facilitating input to train ML algorithms using ETL Tools.',
    '• Leveraging the Flutter framework, I designed and developed cross-platform mobile applications to ensure a seamless and engaging user experience. PS: This website is crafted with Flutter.',
    '• Utilizing machine learning algorithms, I developed an object detection program specifically trained to identify and recognize particular images for enhanced detection capabilities.',
  ];

  final achievements = <String>[
    '• ACE Award recipient from Accenture for achieving a 200% team efficiency increase.\n• Demonstrated expertise in project-wide database design and system architecture.\n• Monitored Control M jobs across multiple regions for seamless data flow.\n• Executed incident-free weekly code migrations to PROD through Jenkins.',
    '• Contributed to timely project delivery through collaborative team assistance, ensuring seamless execution without disruptions.\n• Completed tasks within an unprecedented timeframe, allowing for error-free project handover and additional testing time.\n• Applied various Data Warehousing and Modeling techniques for effective analysis.',
    '• Created a Flutter-based mobile application for dairy management.\n• Streamlined tasks such as daily notes and features like dark mode.\n• Designed a user-friendly interface for efficient dairy operations.',
    '• Enhanced crime detection with reinforcement learning in image recognition comparing CNN.\n• Predictive leaf disease analysis using CNN comparing ANN.\n• Developed a food crop monitoring system using principal component analysis, compared with bayes classification.',
  ];

  var hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 60.0),
          Text(
            'click on the image to view data',
            style: AppTextStyles.desctempStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 60.0),
          mobilebuildProjectGridView(crossAxisCount: 1)
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 60.0),
          buildProjectGridView(crossAxisCount: 1)
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildProjectText(),
          Constants.sizedBox(height: 60.0),
          buildProjectGridView(crossAxisCount: 2),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  GridView buildProjectGridView({required int crossAxisCount}) {
    return GridView.builder(
      itemCount: images.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisExtent: 460,
        mainAxisSpacing: 24,
        crossAxisSpacing: 24,
      ),
      itemBuilder: (context, index) {
        var image = images[index];
        return FadeInUpBig(
          duration: const Duration(milliseconds: 1600),
          child: InkWell(
            onTap: () {
              setState(() {
                hoveredIndex = index;
              });
            },
            onHover: (value) {
              setState(() {
                if (value) {
                  hoveredIndex = index;
                } else {
                  hoveredIndex = null;
                }
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.fill),
                        color: AppColors.themeColor,
                  ),
                ),
                Visibility(
                  visible: index == hoveredIndex,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    transform: index == hoveredIndex ? onH0verEffect : null,
                    curve: Curves.easeIn,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [
                            AppColors.themeColor.withOpacity(1.0),
                            AppColors.themeColor.withOpacity(0.9),
                            AppColors.themeColor.withOpacity(0.8),
                            AppColors.themeColor.withOpacity(0.6),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                    child: Column(
                      children: [
                        Text(
                          projectTitle[index],
                          style: AppTextStyles.smallheadingStyles(
                              color: Colors.black),
                        ),
                        Constants.sizedBox(height: 15.0),
                        Text(
                          projectDesc[index],
                          style: AppTextStyles.desctempStyle(color: Colors.black),
                          textAlign: TextAlign.start,
                        ),
                        Constants.sizedBox(height: 15.0),
                        Text(
                          'Achievements',
                          style: AppTextStyles.smallheadingStyles(color: Colors.black),
                          textAlign: TextAlign.start,
                        ),
                        Constants.sizedBox(height: 15.0),
                        Text(
                          achievements[index],
                          style: AppTextStyles.desctempStyle(color: Colors.black),
                          textAlign: TextAlign.start,
                        ),
                      ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  GridView mobilebuildProjectGridView({required int crossAxisCount}) {
    return GridView.builder(
      itemCount: images.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisExtent: 460,
        mainAxisSpacing: 24,
        crossAxisSpacing: 24,
      ),
      itemBuilder: (context, index) {
        var image = images[index];
        return FadeInUpBig(
          duration: const Duration(milliseconds: 1600),
          child: InkWell(
            onTap: () {
              setState(() {
                hoveredIndex = index;
              });
            },
            onHover: (value) {
              /* setState(() {
                if (value) {
                  hoveredIndex = index;
                } else {
                  hoveredIndex = null;
                }
              });*/
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.fill),
                    color: AppColors.themeColor,
                  ),
                ),
                Visibility(
                  visible: index == hoveredIndex,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    transform: index == hoveredIndex ? onH0verEffect : null,
                    curve: Curves.easeIn,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [
                            AppColors.themeColor.withOpacity(1.0),
                            AppColors.themeColor.withOpacity(0.9),
                            AppColors.themeColor.withOpacity(0.8),
                            AppColors.themeColor.withOpacity(0.6),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                    child: Column(
                        children: [
                          Text(
                            projectTitle[index],
                            style: AppTextStyles.smallheadingStyles(
                                color: Colors.black87),
                          ),
                          Constants.sizedBox(height: 15.0),
                          Text(
                            projectDesc[index],
                            style: AppTextStyles.descStyle(color: Colors.black87),
                            textAlign: TextAlign.start,
                          ),
                          Constants.sizedBox(height: 15.0),
                          Text(
                            'Achievements',
                            style: AppTextStyles.smallheadingStyles(color: Colors.black87),
                            textAlign: TextAlign.start,
                          ),
                          Constants.sizedBox(height: 15.0),
                          Text(
                            achievements[index],
                            style: AppTextStyles.descStyle(color: Colors.black87),
                            textAlign: TextAlign.start,
                          ),
                        ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  FadeInDown buildProjectText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Latest ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Projects',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }
}
