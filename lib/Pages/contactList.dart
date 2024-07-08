import 'package:flutter/material.dart';
import 'package:transfer_me/widgets/appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePath = [
      "Assets/images/add.png",
      "Assets/images/ms.png",
      "Assets/images/ma.png",
      "Assets/images/js.png",
      "Assets/images/hr.png",
      "Assets/images/lu.png",
    ];

    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/images/arrows-left.svg",
        onLeftIconTap: () {
          Navigator.pop(context);
        },
        title: "Contact List",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Favourites",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 18,
                  color: Color.fromRGBO(135, 135, 135, 1),
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: imagePath.map(
                    (path) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.asset(path),
                      );
                    },
                  ).toList(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "All Contacts",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 18,
                  color: Color.fromRGBO(135, 135, 135, 1),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "A",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 18,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              const SizedBox(height: 20),
              const inAndOutCard(
                  txt1: "Jason Adam",
                  txt2: "AC: 213-4213-1",
                  img2: "Assets/images/js.png",
                  img3: "Assets/images/blueTick.svg"),
              SizedBox(
                height: 10,
              ),
              const inAndOutCard(
                  txt1: "Harry Leo",
                  txt2: "AC: 361-4343-5",
                  img2: "Assets/images/hr.png",
                  img3: "Assets/images/whiteTick.svg"),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              const Text(
                "B",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 18,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              const SizedBox(height: 20),
              const inAndOutCard(
                  txt1: "Mandy Lin",
                  txt2: "AC: 213-4213-1",
                  img2: "Assets/images/ma.png",
                  img3: "Assets/images/blueTick.svg"),
              SizedBox(
                height: 10,
              ),
              const inAndOutCard(
                  txt1: "Maria Sam",
                  txt2: "AC: 361-4343-5",
                  img2: "Assets/images/ms.png",
                  img3: "Assets/images/whiteTick.svg"),
              SizedBox(
                height: 10,
              ),
              const inAndOutCard(
                  txt1: "Lucas",
                  txt2: "AC: 361-4343-5",
                  img2: "Assets/images/lu.png",
                  img3: "Assets/images/whiteTick.svg"),
            ],
          ),
        ),
      ),
    );
  }
}

class inAndOutCard extends StatelessWidget {
  final String txt1;
  final String txt2;
  final String img2;
  final String img3;

  const inAndOutCard({
    Key? key,
    required this.txt1,
    required this.txt2,
    required this.img2,
    required this.img3,
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
            Image.asset(img2),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(img3),
              ],
            )
          ],
        ),
      ),
    );
  }
}
