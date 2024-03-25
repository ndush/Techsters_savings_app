
import 'package:flutter/material.dart';
import 'package:savings_app/features/home/pages/home_page.dart';
import 'package:savings_app/features/login/bloc/login_bloc.dart';
import 'package:savings_app/features/login/bloc/login_state.dart';
import 'package:savings_app/features/signup/pages/registration_page.dart';
import 'package:savings_app/shared/widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static route()=> MaterialPageRoute(builder: (context) {
      return const LoginPage();
    },);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    var bloc = context.watch<LoginBloc>();
    var state = bloc.state;

    switch(state.loginStatus){
      case LoginStatus.Initial:
        break;
      case LoginStatus.Processing:
        break;
      case LoginStatus.Successful:
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        Navigator.pushReplacement(
          context,
          HomePage.route(),
        );
        bloc.reset();
      });
      break;
      case LoginStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(const SnackBar(content: Text("An error occured")));
          bloc.resetStatusToInitial();
        });
        break;
      case LoginStatus.InvalidEmailAddress:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(const SnackBar(content: Text("You entered and invalid email address")));
          bloc.resetStatusToInitial();
        });

        break;
      case LoginStatus.InvalidPassword:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(const SnackBar(content: Text("You entered an invalid password")));
          bloc.resetStatusToInitial();
        });
        break;
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Align(
            //   alignment: Alignment.topLeft,
            //   child: IconButton(
            //       onPressed: (){},
            //       icon: Icon(
            //         Icons.cancel_outlined,
            //         size: 45,
            //       )
            //   ),
            // ),
            const SizedBox(height: 80,),
            Text(
              "Login",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const Text("Securely login to your PiggyVest."),

            CustomTextField(
              label: "Email",
              onChanged: (newText) {
                bloc.setEmailAddress(newText);
              },
            ),
            CustomTextField(
              label: "Password",
              onChanged: (newText) {
                bloc.setPassword(newText);
              },
            ),
            const SizedBox(height: 24,),
            ElevatedButton(
                onPressed: () {
                  bloc.onSubmit();
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      )
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                ),
                child: const Text("LOG IN")
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return RegistrationPage();
                  },
                ));
              },
              child: const Text("Don't have an account? Register"),
            ),
            TextButton(
              onPressed: () {
              },
              child: const Text("Forgot your password?"),
            )
          ],
        ),
      ),
    );
  }
}
