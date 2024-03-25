import 'package:flutter/material.dart';
import 'package:savings_app/features/home/widgets/hide_todo_sheet.dart';
import 'package:savings_app/features/home/widgets/my_todo_item.dart';


import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';

class MyTodoSection extends StatelessWidget {
  const MyTodoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = context.watch<HomeBloc>();
    HomeState homeState = homeBloc.state;


    return homeState.hideTodo==true ? Container() : Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header Row Start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "My Todo",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black38
                ),
              ),
              TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      showDragHandle: true,
                      builder: (context) {
                        return HideTodoSheet();
                      },
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "Hide",
                      style: TextStyle(color: Colors.red.shade700),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.red.shade700,
                    )
                  ],
                ),
              )
            ],
          ),
          //ListView Start
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyTodoItem(
                  title: "Add Debit Card",
                  progress: 0.3,
                ),
                MyTodoItem(
                  title: "Enable Autosave",
                  progress: 0.9,
                ),
                MyTodoItem(
                  title: "Enable face id/fingerprint",
                  progress: 0,
                ),
                MyTodoItem(
                    title: "Add a Picture",
                    progress: 0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
