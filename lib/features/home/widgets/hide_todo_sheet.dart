
import 'package:flutter/material.dart';
import 'package:savings_app/features/home/bloc/home_bloc.dart';


class HideTodoSheet extends StatelessWidget {
  const HideTodoSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
              "assets/images/piggyvest.png",
            height: 80,
            width: 80,
          ),
          const SizedBox(height: 24,),
          const Text(
            "Hide TO-DO List",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 24,),
          const Text("Temporarily hide all to-do list till tomorrow"),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            child: Divider(),
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Remind me Later"),
                        content: const Text("Are you sure you want to hide your todo list till tomorrow"),
                        actions: [
                          TextButton(
                              onPressed:() {
                                Navigator.pop(context);

                                context.read<HomeBloc>().hideTodoList();
                              },
                              child: const Text("Yes, remove it"),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Close")
                          )
                        ],
                      );
                    },
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                side: BorderSide(
                    color: Colors.red.shade700,
                    width: 2,
                )
              ),
              child: const Text(
                  "Hide Todo List",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
          )
        ],
      ),
    );
  }
}
