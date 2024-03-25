
import 'package:flutter/material.dart';
import 'package:savings_app/features/account/pages/account_view.dart';
import 'package:savings_app/features/home/pages/home_view.dart';
import 'package:savings_app/features/invest/pages/invest_view.dart';
import 'package:savings_app/features/savings/pages/savings_view.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});


  static route() => MaterialPageRoute(builder: (context) => const HomePage(),);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listOfPages = [
    const HomeView(),
    const SavingsView(),
    const InvestView(),
    const AccountView()
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeBloc>().loadUserDetails();
  }

  @override
  Widget build(BuildContext context){
    HomeBloc homeBloc = context.watch<HomeBloc>();
    HomeState homeState = homeBloc.state;
    int selectedIndex = homeState.tabIndex;

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: listOfPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          homeBloc.updateTabIndex(value);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.savings),
              label: "Savings",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.rocket_launch),
              label: "Invest"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Account"
          ),
        ],
      ),
    );
  }
}
