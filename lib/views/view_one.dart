import 'package:flutter/material.dart';
import 'package:ui_homework_uet/custom_widgets/icon_container.dart';
import 'package:ui_homework_uet/custom_widgets/icon_container_round.dart';
import 'package:ui_homework_uet/custom_widgets/round_image_text.dart';

import '../constants/text_style_constants.dart';

class ViewOne extends StatelessWidget {
  const ViewOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Group',
          ),
        ],
      ),
      backgroundColor: Colors.lightBlue.shade700,
      // appBar: AppBar(
      //   // backgroundColor: Colors.red,
      //   title: const Text('View One'),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 12.0, left: 12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Tushaar',
                          style: heading3,
                        ),
                        Text(
                          'Split Your Bill',
                          style: heading2,
                        ),
                      ],
                    ),
                    const IconContainer(
                        icon: Icons.person, iconColor: Colors.redAccent)
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 32,
                  ),
                  padding: const EdgeInsets.all(20),
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18)),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Split with',
                            style: heading1,
                          ),
                          const Spacer(
                            flex: 1,
                          ),

                          /// todo: stack
                          SizedBox(
                            height: 60,
                            width: 120,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: IconContainerRound(
                                    icon: Icons.person,
                                    containerColor: Colors.red.shade200,
                                    iconColor: Colors.red,
                                  ),
                                ),
                                Positioned(
                                  left: 23,
                                  child: IconContainerRound(
                                    icon: Icons.person_2,
                                    containerColor: Colors.orange.shade200,
                                    iconColor: Colors.green,
                                  ),
                                ),
                                Positioned(
                                  left: 46,
                                  child: IconContainerRound(
                                    icon: Icons.person_3,
                                    containerColor: Colors.deepPurple.shade200,
                                    iconColor: Colors.deepPurpleAccent,
                                  ),
                                ),
                                const Positioned(
                                  left: 69,
                                  child: IconContainerRound(
                                    icon: Icons.add,
                                    containerColor: Colors.black,
                                    iconColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 0.1,
                                    spreadRadius: 0.000001),
                              ],
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Split Now',
                              style: heading3,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Bill',
                            style: heading4,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            '\$877.22',
                            style: heading1,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(18),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Nearby Friends',
                            style: heading1,
                          ),
                          Row(
                            children: [
                              Text(
                                'See all',
                                style: heading4,
                              ),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RoundImageText(
                            image:
                                'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            text: 'Fox',
                          ),
                          RoundImageText(
                            image:
                                'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            text: 'Hope',
                          ),
                          RoundImageText(
                            image:
                                'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            text: 'John',
                          ),
                          RoundImageText(
                            image:
                                'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            text: 'Smit',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Recent Split',
                        style: heading1,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const IconContainer(
                                icon: Icons.group, iconColor: Colors.lightBlue),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Team Dinner',
                                  style: heading7,
                                ),
                                Text(
                                  'Total Payment \$3900',
                                  style: heading6,
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 40,
                              width: 100,
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: IconContainerRound(
                                      icon: Icons.person,
                                      containerColor: Colors.red.shade200,
                                      iconColor: Colors.red,
                                    ),
                                  ),
                                  Positioned(
                                    left: 23,
                                    child: IconContainerRound(
                                      icon: Icons.person_2,
                                      containerColor: Colors.orange.shade200,
                                      iconColor: Colors.green,
                                    ),
                                  ),
                                  Positioned(
                                    left: 46,
                                    child: IconContainerRound(
                                      icon: Icons.person_3,
                                      containerColor: Colors.deepPurple.shade200,
                                      iconColor: Colors.deepPurpleAccent,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const IconContainer(
                                icon: Icons.group, iconColor: Colors.lightBlue),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Team Dinner',
                                  style: heading7,
                                ),
                                Text(
                                  'Total Payment \$3900',
                                  style: heading6,
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 40,
                              width: 100,
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: IconContainerRound(
                                      icon: Icons.person,
                                      containerColor: Colors.red.shade200,
                                      iconColor: Colors.red,
                                    ),
                                  ),
                                  Positioned(
                                    left: 23,
                                    child: IconContainerRound(
                                      icon: Icons.person_2,
                                      containerColor: Colors.orange.shade200,
                                      iconColor: Colors.green,
                                    ),
                                  ),
                                  Positioned(
                                    left: 46,
                                    child: IconContainerRound(
                                      icon: Icons.person_3,
                                      containerColor: Colors.deepPurple.shade200,
                                      iconColor: Colors.deepPurpleAccent,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
