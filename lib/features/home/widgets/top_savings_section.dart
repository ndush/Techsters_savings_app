

import 'package:flutter/material.dart';

class TopSavingsSection extends StatelessWidget {
  const TopSavingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Top Savings",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black38
            ),
          ),
          ListTile(
            leading: Image.asset("assets/images/shield.png"),
            title: const Text(
                "Piggybank",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text("Auto save: Daily weekly or monthly"),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text("SAVE"),
            ),
            contentPadding: EdgeInsets.zero,
          ),
          ListTile(
            leading: Image.asset("assets/images/lock.png"),
            title: const Text(
                "Safelock",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text("Lock funds to avoid temptation"),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text("LOCK"),
            ),
            contentPadding: EdgeInsets.zero,
          ),
          ListTile(
            leading: Image.asset("assets/images/wallet.png"),
            title: const Text(
                "Flex naira",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text("Your emergency funds with interest"),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text("FUND"),
            ),
            contentPadding: EdgeInsets.zero,
          )
        ],
      ),
    );
  }
}
