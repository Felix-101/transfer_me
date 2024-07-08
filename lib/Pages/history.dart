import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transfer_me/widgets/appbar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/images/arrows-left.svg",
        title: "History",
        onLeftIconTap: () {
          Navigator.of(context).pop();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Date",
                    style: TextStyle(
                        fontFamily: "SanFran",
                        fontSize: 19,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "Assets/images/calendar.svg",
                        colorFilter: const ColorFilter.mode(
                            Colors.black, BlendMode.srcIn),
                      ),
                      const Text(
                        "  May",
                        style: TextStyle(
                            fontFamily: "SanFran",
                            fontSize: 19,
                            color: Color.fromARGB(255, 10, 10, 10),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              insAndOut(context),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Today",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 19,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const inAndOutCard(
                txt1: "Food Delivery",
                txt2: "6:57 PM",
                txt3: "\$6.32",
                img1: "Assets/images/bubbleTea.svg",
                img2: "Assets/images/delivery.png",
                img3: "Assets/images/topRight.svg",
              ),
              const SizedBox(height: 20),
              const inAndOutCard(
                txt1: "Shopping",
                txt2: "4:34 PM",
                txt3: "\$5.84",
                img1: "Assets/images/shoppingBag.svg",
                img2: "Assets/images/shop.png",
                img3: "Assets/images/bottomLeft.svg",
              ),
              const SizedBox(height: 20),
              const inAndOutCard(
                txt1: "Sarah",
                txt2: "12:23 AM",
                txt3: "\$5.84",
                img2: "Assets/images/sarah.png",
                img3: "Assets/images/bottomLeft.svg",
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Yesterday",
                    style: TextStyle(
                        fontFamily: "SanFran",
                        fontSize: 19,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(1, 102, 255, 1),
                            decoration: TextDecoration.underline,
                            decorationColor: Color.fromRGBO(1, 102, 255, 1),
                            decorationThickness: 2),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset("Assets/images/chevron.svg")
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const inAndOutCard(
                txt1: "Food Delivery",
                txt2: "6:57 PM",
                txt3: "\$6.32",
                img1: "Assets/images/bubbleTea.svg",
                img2: "Assets/images/delivery.png",
                img3: "Assets/images/topRight.svg",
              ),
              const SizedBox(height: 20),
              const inAndOutCard(
                txt1: "Shopping",
                txt2: "4:34 PM",
                txt3: "\$5.84",
                img1: "Assets/images/shoppingBag.svg",
                img2: "Assets/images/shop.png",
                img3: "Assets/images/bottomLeft.svg",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row insAndOut(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          height: 68,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(81, 102, 191, 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Transactions",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SvgPicture.asset(
                      "Assets/images/bottomLeft.svg",
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "\$200",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 68,
          width: MediaQuery.of(context).size.width * 0.35,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(142, 223, 235, 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Tickets",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SvgPicture.asset(
                      "Assets/images/topRight.svg",
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "\$60",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class inAndOutCard extends StatelessWidget {
  final String txt1;
  final String txt2;
  final String txt3;
  final String? img1;
  final String img2;
  final String img3;

  const inAndOutCard({
    Key? key,
    required this.txt1,
    required this.txt2,
    required this.txt3,
    required this.img2,
    required this.img3,
    this.img1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Stack(alignment: Alignment.center, children: [
              Image.asset(img2),
              if (img1 != null) SvgPicture.asset(img1!)
            ]),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    txt1,
                    style: const TextStyle(
                        fontFamily: 'SanFran',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    txt2,
                    style: const TextStyle(
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
                SvgPicture.asset(img3),
                Text(
                  txt3,
                  style: const TextStyle(
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
    );
  }
}
