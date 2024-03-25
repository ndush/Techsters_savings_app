import 'package:flutter/material.dart';
import 'package:savings_app/utils.dart';


class SavingDetailsCard extends StatelessWidget {
  const SavingDetailsCard({
    super.key,
    required this.topRightWidget,
    required this.balance,
    this.onClick,
  });

  final Widget topRightWidget;
  final String balance;
  final Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16.0)
        ),
        padding: const EdgeInsets.all(16.0),
        height: 160,
        child: Stack(
          children: [
            ElevatedButton.icon(
              onPressed: onClick,
              icon: const Icon(Icons.add),
              label: const Text("Quick save"),
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 8,
                  ),
                  backgroundColor: Colors.yellow.shade800,
                  foregroundColor: Colors.black,
                  disabledBackgroundColor: Colors.yellow.shade800,
                  disabledForegroundColor: Colors.black
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: topRightWidget
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My savings",
                      style: TextStyle(
                        color: Colors.grey.shade200
                      ),
                    ),
                    Text(
                      "${getNaira()}$balance",
                      style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}