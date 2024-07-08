import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transfer_me/widgets/appbar.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/images/arrows-left.svg",
        title: "Statistics",
        onLeftIconTap: () {
          Navigator.of(context).pop();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align children to the start
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "Assets/images/calendar.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "01 Mar 2021- 31 Mar 2021",
                    style:
                        TextStyle(fontFamily: "SanFran", color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StatisticsItem(
                      iconPath: "Assets/images/bottomLeft.svg",
                      title: "Income",
                      amount: "\$5,000",
                      color: Color.fromRGBO(142, 223, 235, 1),
                    ),
                    SizedBox(width: 20),
                    StatisticsItem(
                      iconPath: "Assets/images/topRight.svg",
                      title: "Expense",
                      amount: "\$1,000",
                      color: Color.fromRGBO(81, 102, 191, 1),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "Assets/images/expenses.png",
                width: MediaQuery.of(context).size.width * 2,
              ),
              const SizedBox(height: 10), // Adjust the space as needed
              const Text(
                "Highest Expense",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "SanFran",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20,
              ),

              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset("Assets/images/monica.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Transfer to Monica",
                              style: TextStyle(
                                  fontFamily: 'SanFran',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "15th March, 2021",
                              style: TextStyle(
                                  fontFamily: 'SanFran',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SvgPicture.asset("Assets/images/topRight.svg"),
                          const Text(
                            "- \$96.84",
                            style: TextStyle(
                                fontFamily: 'SanFran',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(81, 102, 191, 1)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StatisticsItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String amount;
  final Color color;

  const StatisticsItem({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.amount,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconPath),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                color: color,
                fontFamily: "SanFran",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              amount,
              style: TextStyle(
                color: color,
                fontFamily: "SanFran",
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
