

import 'package:flutter/material.dart';

class SuggestionsSection extends StatelessWidget {
  const SuggestionsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Suggestions for you",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black38
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            height: 100,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset("assets/images/save_for_rent.png",),
                const SizedBox(width: 8,),
                Image.asset("assets/images/save_for_business.png"),
                const SizedBox(width: 8,),
                Image.asset("assets/images/save_for_vacation.png"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
