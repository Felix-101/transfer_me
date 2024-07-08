import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transfer_me/widgets/appbar.dart';

class AtmCenterScreen extends StatelessWidget {
  const AtmCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/images/arrows-left.svg",
        title: "ATM Centers",
        onLeftIconTap: () {
          Navigator.of(context).pop();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "Assets/images/Maskgroup.png",
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              const AtmCenterItem(
                imagePath: "Assets/images/dbs.png",
                title: "DBS Bank",
                address: "72, Gotham Road, New York.",
                distance: "1.3km",
              ),
              SizedBox(
                height: 20,
              ),
              const AtmCenterItem(
                imagePath: "Assets/images/nib.png",
                title: "NIB Bank",
                address: "72, Gotham Road, New York.",
                distance: "2.2 KM",
              ),
              SizedBox(
                height: 20,
              ),
              const AtmCenterItem(
                imagePath: "Assets/images/citi.png",
                title: "Citi Bank",
                address: "72, Gotham Road, New York.",
                distance: "3.4 KM",
              ),
              SizedBox(
                height: 20,
              ),
              const AtmCenterItem(
                imagePath: "Assets/images/fsb.png",
                title: "FSB Bank",
                address: "72, Gotham Road, New York.",
                distance: "1.1 KM",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AtmCenterItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String address;
  final String distance;

  const AtmCenterItem({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.address,
    required this.distance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(imagePath),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'SanFran',
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    address,
                    style: TextStyle(
                      fontFamily: 'SanFran',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  distance,
                  style: TextStyle(
                    fontFamily: 'SanFran',
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
