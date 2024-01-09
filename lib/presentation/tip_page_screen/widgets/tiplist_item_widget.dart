import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:thrive_quit_application/core/app_export.dart';

// ignore: must_be_immutable
class TiplistItemWidget extends StatefulWidget {
  const TiplistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  State<TiplistItemWidget> createState() => _TiplistItemWidgetState();
}

class _TiplistItemWidgetState extends State<TiplistItemWidget> {
  static final tipsCollapsed = 'Constantly getting the urge to pick up your cigarette again? Try chewing gum to distract your mind and stray your senses. The act of chewing gum not only provides a satisfying oral fixation....';
  static final tipsExpanded = 'Constantly getting the urge to pick up your cigarette again? Try chewing gum to distract your mind and stray your senses. The act of chewing gum not only provides a satisfying oral fixation but also engages your taste buds, creating a sensory experience that can help alleviate the desire for a cigarette. Additionally, choosing sugar-free gum can be a healthier alternative and may contribute to breaking the association between smoking and the need for oral stimulation. Experiment with different flavors to find one that resonates with you, turning chewing gum into a positive and enjoyable substitute for the old smoking habit. Remember, finding alternative habits is a crucial step in the journey to quit smoking and regain control over your health and well-being.';
  static final bonusCollapsed = 'Inhale fragrant essential oil vapour to help overcome your desire and calm yourself with its healing and rejuvenating properties. Aromatherapy, using essential oils like lavender, peppermint,....';
  static final bonusExpanded = 'Inhale fragrant essential oil vapour to help overcome your desire and calm yourself with its healing and rejuvenating properties. Aromatherapy, using essential oils like lavender, peppermint, or citrus, can be a powerful tool in curbing cravings and promoting relaxation during your quit-smoking journey. Simply add a few drops of your chosen essential oil to a diffuser, inhale the soothing vapors deeply, and let the natural aromas permeate your surroundings. The therapeutic scents can provide a positive sensory experience, distracting your mind from the urge to smoke and fostering a sense of well-being. This aromatic technique not only serves as a healthier alternative but also contributes to creating a tranquil environment that supports your commitment to a smoke-free lifestyle.';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTips(
          "Tip of the day",
        ),
        SizedBox(height: 30.v),
        buildBonus("Bonus Tip"),
      ]
    );
  }

  Widget buildTips (String title,) => Container(
      padding: EdgeInsets.symmetric(
      horizontal: 14.h,
      vertical: 15.v,
      ),
      decoration: AppDecoration.fillAmber.copyWith(
      borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: ExpandablePanel(
        header: Text(
                 title,
                 style: CustomTextStyles.titleMediumWhiteA700,
               ),
        collapsed: Text(
          tipsCollapsed,
          style: CustomTextStyles.titleLargeWhiteA700Regular, 
        ),
        expanded: Text(
          tipsExpanded,
          style: CustomTextStyles.titleLargeWhiteA700Regular,
          ),
        ),
      );


  Widget buildBonus (String title,) => Container(
      padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.fillAmber.copyWith(
            color: Colors.white,
            borderRadius: BorderRadiusStyle.roundedBorder17,
            border: Border.all(color: Colors.orange, width: 3.5),
          ),
      child: ExpandablePanel(
        header: Text(
                 title,
                 style: CustomTextStyles.titleMediumWhiteA700
                      .copyWith(color: Colors.black),
               ),
        collapsed: Text(
          bonusCollapsed,
          style: CustomTextStyles.titleLargeWhiteA700Regular
                        .copyWith(color: Colors.black),
        ),
        expanded: Text(
          bonusExpanded,
          style: CustomTextStyles.titleLargeWhiteA700Regular
                        .copyWith(color: Colors.black),
          ),
        ),
      );
}
