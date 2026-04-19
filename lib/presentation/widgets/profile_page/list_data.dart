import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';

class ListData extends StatefulWidget {
  const ListData({
    super.key,
    this.dividerColor = AppColors.grey500,
    required this.showSwitch,
    required this.title,
    required this.icon,
    required this.subtitle,
  });
  final Color dividerColor;
  final bool showSwitch;
  final String title, subtitle;
  final IconData icon;
  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  bool isEnable = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(widget.icon, size: 20, color: AppColors.grey600),
              SizedBox(width: 8),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyles.fontText14SemiBold(AppColors.blackColor),
                  ),
                  Text(
                    widget.subtitle,
                    style: TextStyles.fontText12Regular(AppColors.grey600),
                  ),
                ],
              ),
            ],
          ),

          widget.showSwitch
              ? Row(
                  children: [
                    Container(height: 26, width: 1, color: AppColors.grey300),
                    Transform.scale(
                      scale: 0.8,
                      child: Switch(
                        activeTrackColor: AppColors.primary600,
                        activeThumbColor: AppColors.whiteColor,
                        inactiveTrackColor: AppColors.grey400,
                        inactiveThumbColor: AppColors.whiteColor,

                        splashRadius: 1,
                        value: isEnable,
                        onChanged: (v) {
                          setState(() {
                            isEnable = v;
                          });
                        },
                      ),
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
