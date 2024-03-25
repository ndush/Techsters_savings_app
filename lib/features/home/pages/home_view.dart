
import 'package:flutter/material.dart';
import 'package:savings_app/features/home/bloc/home_bloc.dart';
import 'package:savings_app/features/home/widgets/my_todo_section.dart';
import 'package:savings_app/features/home/widgets/suggestions_section.dart';
import 'package:savings_app/features/home/widgets/top_savings_section.dart';
import 'package:savings_app/features/home/widgets/user_balance_card.dart';
import 'package:savings_app/features/home/widgets/vetted_opportunities_section.dart';




class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var homestate = context.watch<HomeBloc>().state;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello ${homestate.userModel?.fullName ?? "..."}",
              style: const TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            const Text(
              "Do more with your finances",
              style: TextStyle(
                fontSize: 12.0,
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
        padding: const EdgeInsets.all(16.0),
        children: [
          UserBalanceDetails(),
          const MyTodoSection(),
          const TopSavingsSection(),
          const SuggestionsSection(),
          const VettedOpportunitiesSection(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: (){
          print("FAB CLICKED");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
