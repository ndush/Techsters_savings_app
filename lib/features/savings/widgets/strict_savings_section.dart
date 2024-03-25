import 'package:flutter/material.dart';
import 'package:savings_app/features/savings/widgets/strict_savings_items.dart';


class StrictSavingsSection extends StatelessWidget {
  const StrictSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
              "Strict Savings",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38
              ),
          ),
          //Gridview for holding savings categories
          SizedBox(
            height: 370,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                StrictSavingsItem(
                  title: "PiggyBank",
                  subtitle: "Automatic daily, weekly and monthly withdrawal",
                  color: Colors.blue,
                  textOnButton: "SETUP",
                ),
                StrictSavingsItem(
                    textOnButton: "LOCK MONEY",
                    title: "SafeLock",
                    subtitle: "Lock funds to avoid temptation",
                    color: Colors.blue.shade200
                ),
                StrictSavingsItem(
                    textOnButton: "NEW GOALS",
                    title: "Target Savings",
                    subtitle: "Smash your savings goal faster",
                    color: Colors.green.shade600
                ),
                StrictSavingsItem(
                    textOnButton: "Add Money",
                    title: "HouseMoney",
                    subtitle: "Save for your housing",
                    color: Colors.orange
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
