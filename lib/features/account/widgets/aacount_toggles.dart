

import 'package:flutter/material.dart';

class AccountToggles extends StatelessWidget {
  const AccountToggles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: const Text("Enable finger print/face ID"),
            trailing: Switch(
              value: true,
              onChanged: (value){},
              activeColor: Colors.green.shade200,
            ),
          ),
          ListTile(
            title: const Text("Show dashboard account balances"),
            trailing: Switch(
              value: true,
              onChanged: (value){},
              activeColor: Colors.green.shade200,
            ),
          ),
          ListTile(
            title: const Text("Interest Enabled on Savings"),
            trailing: Switch(
              value: true,
              onChanged: (value){},
              activeColor: Colors.green.shade200,
            ),
          ),
        ],
      ),
    );
  }
}
