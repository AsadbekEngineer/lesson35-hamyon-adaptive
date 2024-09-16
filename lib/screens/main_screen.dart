import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  bool switched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 72, 164, 195),
        centerTitle: true,
        title: const Text("Mening Hamyonim"),
      ),
      //! MOBILE
      body: isMobile(context)
          ? Stack(
              children: [
                const Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "August, 2021",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          CupertinoIcons.arrow_left_circle,
                          size: 40,
                        ),
                        Text(
                          "4,915,000",
                          style: TextStyle(fontSize: 40),
                        ),
                        Icon(
                          CupertinoIcons.arrow_right_circle,
                          size: 40,
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 150,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height *
                        0.15, // Adjusted dynamically
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 187, 224, 241),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    //! Oylik Byudegti
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Oylik Byudget: ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(Icons.edit),
                        Text(
                          "100.000.000 so'm",
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            Text(
                              "4.9%",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 240,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height *
                        0.6, // Adjusted dynamically
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          //!  Expense Widgets Here
                          ExpenseWidget(
                              expense: 'Qovun',
                              sum: '20 000 so\'m',
                              time: '15 september',
                              icon: const Icon(Icons.punch_clock)),
                          ExpenseWidget(
                              expense: 'Qovun',
                              sum: '20 000 so\'m',
                              time: '15 september',
                              icon: const Icon(Icons.punch_clock)),
                          ExpenseWidget(
                              expense: 'Qovun',
                              sum: '20 000 so\'m',
                              time: '15 september',
                              icon: const Icon(Icons.punch_clock)),
                          ExpenseWidget(
                              expense: 'Qovun',
                              sum: '20 000 so\'m',
                              time: '15 september',
                              icon: const Icon(Icons.punch_clock)),
                          ExpenseWidget(
                              expense: 'Qovun',
                              sum: '20 000 so\'m',
                              time: '15 september',
                              icon: const Icon(Icons.punch_clock)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          //!Desktop
          : Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Xarajatlar ro'yxatini ko'rish",
                        style: TextStyle(fontSize: 25),
                      ),
                      //! Switch button
                      Switch(
                          value: switched,
                          onChanged: (bool value) {
                            setState(() {
                              switched = value;
                            });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //! SWITCH OFF DAGI NARSA
                  switched
                      ? Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 187, 224, 241),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50),
                                    ),
                                  ),
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  child: const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Oylik Byudget: ",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Icon(Icons.edit),
                                      Text(
                                        "100.000.000 so'm",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "4.9%",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 80,
                                right: 0,
                                left: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50),
                                    ),
                                  ),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: [
                                        ExpenseWidget(
                                          expense: 'ssss',
                                          sum: '50 000 s\'om',
                                          time: 'today',
                                          icon: const Icon(Icons.abc),
                                        ),
                                        ExpenseWidget(
                                          expense: 'ssss',
                                          sum: '50 000 s\'om',
                                          time: 'today',
                                          icon: const Icon(Icons.abc),
                                        ),
                                        ExpenseWidget(
                                          expense: 'ssss',
                                          sum: '50 000 s\'om',
                                          time: 'today',
                                          icon: const Icon(Icons.abc),
                                        ),
                                        ExpenseWidget(
                                          expense: 'ssss',
                                          sum: '50 000 s\'om',
                                          time: 'today',
                                          icon: const Icon(Icons.abc),
                                        ),
                                        ExpenseWidget(
                                          expense: 'ssss',
                                          sum: '50 000 s\'om',
                                          time: 'today',
                                          icon: const Icon(Icons.abc),
                                        ),
                                        ExpenseWidget(
                                          expense: 'ssss',
                                          sum: '50 000 s\'om',
                                          time: 'today',
                                          icon: const Icon(Icons.abc),
                                        ),
                                        ExpenseWidget(
                                          expense: 'ssss',
                                          sum: '50 000 s\'om',
                                          time: 'today',
                                          icon: const Icon(Icons.abc),
                                        ),
                                        ExpenseWidget(
                                          expense: 'ssss',
                                          sum: '50 000 s\'om',
                                          time: 'today',
                                          icon: const Icon(Icons.abc),
                                        ),
                                        ExpenseWidget(
                                          expense: 'ssss',
                                          sum: '50 000 s\'om',
                                          time: 'today',
                                          icon: const Icon(Icons.abc),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : const Column(
                          children: [
                            Text(
                              "August, 2021",
                              style: TextStyle(
                                  fontSize: 33, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  CupertinoIcons.arrow_left_circle,
                                  size: 60,
                                ),
                                Text(
                                  "4,915,000",
                                  style: TextStyle(fontSize: 60),
                                ),
                                Icon(
                                  CupertinoIcons.arrow_right_circle,
                                  size: 60,
                                ),
                              ],
                            ),
                          ],
                        ),
                ],
              ),
            ),
    );
  }
}

class ExpenseWidget extends StatelessWidget {
  final String expense;
  final String sum;
  final String time;
  final Icon icon;

  ExpenseWidget({
    required this.expense,
    required this.sum,
    required this.time,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 10.0), // Add some padding for better spacing
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Distribute items correctly
        children: [
          Row(
            children: [
              // Icon Container
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: icon,
              ),
              const SizedBox(width: 10), // Space between the icon and text
              // Expense and Time Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(expense, style: const TextStyle(fontSize: 16)),
                  Text(time,
                      style: const TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ],
          ),
          // Sum Text
          Text(sum,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
