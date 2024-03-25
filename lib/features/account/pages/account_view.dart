import 'package:flutter/material.dart';
import 'package:savings_app/features/account/widgets/aacount_toggles.dart';
import 'package:savings_app/features/account/widgets/account_grid.dart';
import 'package:savings_app/features/account/widgets/account_settings_1.dart';
import 'package:savings_app/features/account/widgets/account_settings_2.dart';


class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Account,",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Anthony Ameh",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey.shade600
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              color: Colors.blue,
              onPressed: (){},
              icon: const Icon(
                Icons.account_circle,
                size: 40,
              )
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 16),
        children: [
          AccountToggles(),
          AccountGrid(),
          AccountSettings1(),
          const SizedBox(height: 16,),
          AccountSettings2(),
        ],
      ),
    );
  }
}
