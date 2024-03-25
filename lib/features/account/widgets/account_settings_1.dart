
import 'package:flutter/material.dart';
import 'package:savings_app/features/account/widgets/account_settings_item.dart';


class AccountSettings1 extends StatelessWidget {
  const AccountSettings1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16,),
      child: Column(
        children: [
          AccountSettingsItem(
            title: "Today's rates",
            icon: const Icon(Icons.percent),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingsItem(
            title: "My Account Settings",
            icon: const Icon(Icons.settings),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingsItem(
            title: "Generate Account Statement",
            icon: const Icon(Icons.settings),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingsItem(
            title: "Enable Dark Mode",
            icon: const Icon(Icons.dark_mode),
            trailingIcon: Switch(
              value: false,
              onChanged: (value) {

              },
            ),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingsItem(
            title: "Self help",
            icon: const Icon(Icons.info),
          ),
          Divider(color: Colors.grey.shade300,),
          AccountSettingsItem(
            title: "Security",
            icon: const Icon(Icons.lock),
          )
        ],
      ),
    );
  }
}
