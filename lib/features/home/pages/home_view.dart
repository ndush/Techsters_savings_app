import 'package:flutter/material.dart';

import '../widgets/saving_details_card.dart';
import '../widgets/suggectstions_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello SiGiey",
            style: TextStyle(fontWeight: FontWeight.bold),),
            Text("Do more with your finances",
                style:TextStyle(
                  fontSize:12.0,
                ),
            ),

          ],
        ),

      actions: [
        IconButton(
          color: Colors.blueAccent,
           onPressed: (){},
             icon: Icon(Icons.account_circle,
             size: 40,)
    )

      ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SavingDetailsCard(),
          SuggestionsSection(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        shape: CircleBorder(),
        onPressed: (){
          print("FAB CLICKED");
        },
      ),
    );
  }
}



