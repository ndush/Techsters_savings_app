
import 'package:flutter/material.dart';
import 'package:savings_app/utils.dart';

class InvestDetailsCard extends StatelessWidget {
  const InvestDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Chip(
              label: Text("Up to 35% return"),
            shape: StadiumBorder(),
          ),
          const SizedBox(height: 16,),
          const Text(
              "Total Investment",
            style: TextStyle(color: Colors.white),
          ),
          Text(
              "${getNaira()} 0",
              style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
