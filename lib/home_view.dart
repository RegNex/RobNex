import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:robnex/custom_color.dart';
import 'package:unicons/unicons.dart';

import 'gradient_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  onChange(int index) => setState(() => _currentIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: onChange,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.home_alt), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.comment), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.calendar_alt), label: 'Task'),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.chart_pie), label: 'Report'),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.setting), label: 'Settings')
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 255, 219, 1),
      body: Column(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(45)),
            child: SizedBox(
              height: 480,
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(45)),
                ),
                elevation: 4,
                child: SafeArea(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Material(
                            borderRadius: BorderRadius.circular(20),
                            elevation: 4,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: BackButton(),
                            )),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/robo.png',
                              height: 321,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Center(
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    border: Border.all(color: Colors.grey)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        UniconsLine.location_point,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('33 meters away',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey))
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          GradientButton(
            label: 'Summon',
            hasNext: false,
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Summon your robot to your current location.',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: const [
                Text(
                  'Speed',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(
                  width: 25,
                ),
                HelperButton(
                  color: greenColor,
                  widget: Text(
                    '1x',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                HelperButton(
                  color: Colors.white,
                  widget: Text(
                    '1.5x',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                HelperButton(
                  color: Colors.white,
                  widget: Text(
                    '2x',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: const [
                Text(
                  'Sound',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(
                  width: 25,
                ),
                HelperButton(
                  color: Colors.white,
                  widget: Icon(
                    CupertinoIcons.bell,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                HelperButton(
                  color: greenColor,
                  widget: Icon(
                    CupertinoIcons.bell_slash,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HelperButton extends StatelessWidget {
  const HelperButton({
    Key? key,
    required this.widget,
    required this.color,
  }) : super(key: key);

  final Widget? widget;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
              color: color == Colors.white ? Colors.grey.shade400 : greenColor),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: widget));
  }
}
