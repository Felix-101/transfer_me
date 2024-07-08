import 'package:flutter/material.dart';

import 'package:transfer_me/widgets/appbar.dart';

import 'package:flutter_svg/flutter_svg.dart';

class SimCardServiceScreen extends StatelessWidget {
  const SimCardServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/images/arrows-left.svg",
        title: "Sim Card Service",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Available Balance",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "\$285,856.20",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 30,
                  color: Color.fromRGBO(82, 100, 190, 1),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Please, select the Sim Card Service \non which you want to top-up.",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1, // Adjust the aspect ratio as needed
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<Color> colors = [
                    Color.fromRGBO(82, 102, 190, 1),
                    Color.fromRGBO(142, 223, 235, 1),
                    Color.fromRGBO(235, 67, 53, 1),
                    Color.fromRGBO(94, 207, 249, 1),
                  ];
                  // Use a list of image paths and titl

                  List<String> titles = [
                    "MCB",
                    "Afalah",
                    "Soneri", // Add corresponding titles
                    "BOP",
                  ];

                  return WalletItem(
                    color: colors[index],
                    title: titles[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WalletItem extends StatelessWidget {
  final String title;
  final Color? color;

  const WalletItem({required this.title, this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color ?? Color.fromRGBO(247, 245, 245, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10), // Reduced padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontFamily: "SanFran",
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
