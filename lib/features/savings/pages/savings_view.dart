
import 'package:flutter/material.dart';
import 'package:savings_app/features/savings/pages/quick_save_page.dart';
import 'package:savings_app/features/savings/widgets/flexible_savings_section.dart';
import 'package:savings_app/features/savings/widgets/saving_details_card.dart';
import 'package:savings_app/features/savings/widgets/strict_savings_section.dart';

class SavingsView extends StatelessWidget {
  const SavingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Savings"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.info_outline_rounded)
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SavingDetailsCard(
            balance: "24000",
            topRightWidget: const Chip(
              label: Text(
                  "up to 13% returns",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black,
              shape: StadiumBorder(),
            ),
            onClick: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return QuickSavePage();
                }),
              );
            },
          ),
          StrictSavingsSection(),
          FlexibleSavingsSection(),
        ],
      ),
    );
  }
}
