import 'package:flutter/material.dart';
import 'package:muslim_mate/core/styles/colors.dart';
import 'package:muslim_mate/core/styles/text_styles.dart';
import 'package:muslim_mate/presentation/widgets/prayer_page/daily_activity_list_items.dart';
import 'package:muslim_mate/presentation/widgets/prayer_page/daily_activity_progress_section.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ActivityTab extends StatefulWidget {
  const ActivityTab({super.key});

  @override
  State<ActivityTab> createState() => _ActivityTabState();
}

class _ActivityTabState extends State<ActivityTab> {
  final activities = [
    ActivityItem("Alms", 4, 10, false),
    ActivityItem("Dhuha Prayer", 10, 10, true),
    ActivityItem("Recite the Al Quran", 8, 10, false),
    ActivityItem("Sunnah Prayer Routine", 7, 10, false),
    ActivityItem("Tahajud Prayer", 10, 10, true),
    ActivityItem("Tarawih Prayer", 10, 10, true),
  ];

  @override
  Widget build(BuildContext context) {
    final int completed = activities.where((e) => e.isDone).length;

    return Container(
      //padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Daily Activity",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "${(completed / activities.length * 100).toInt()}%",
                      style: const TextStyle(color: AppColors.whiteColor),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 4),

              const Text(
                "Complete the daily activity checklist",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 12),
              DailyActivityProgressSection(),

              const SizedBox(height: 12),

              DailyActivityListItems(),
            ],
          ),
        ),
      ),
    );
  }

  Widget activityTile(ActivityItem item) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        color: item.isDone ? const Color(0xffCFE9E7) : Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          /// Title
          Expanded(
            child: Text(item.title, style: const TextStyle(fontSize: 14)),
          ),

          /// Progress
          Text(
            "${item.done}/${item.total}",
            style: const TextStyle(color: Colors.teal),
          ),

          const SizedBox(width: 10),

          Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: item.isDone ? AppColors.primary600 : AppColors.grey500,
              ),
              color: item.isDone ? AppColors.primary600 : Colors.transparent,
            ),
            child: item.isDone
                ? const Icon(Icons.check, size: 14, color: Colors.white)
                : null,
          ),
        ],
      ),
    );
  }
}

class ActivityItem {
  final String title;
  final int done;
  final int total;
  final bool isDone;

  ActivityItem(this.title, this.done, this.total, this.isDone);
}
