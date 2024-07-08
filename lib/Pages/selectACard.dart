import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transfer_me/widgets/appbar.dart';

class SelectACardScreen extends StatefulWidget {
  const SelectACardScreen({super.key});

  @override
  _SelectACardScreenState createState() => _SelectACardScreenState();
}

class _SelectACardScreenState extends State<SelectACardScreen> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/images/arrows-left.svg",
        onLeftIconTap: () {
          Navigator.pop(context);
        },
        title: "Select a Card",
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
                height: 20,
              ),
              const Text(
                "Please, select a card you are willing to do the \nmoney transfer with or add a new card \nusing the plus button below.",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select a Card",
                    style: TextStyle(
                      fontFamily: 'SanFran',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SvgPicture.asset("Assets/images/plus.svg"),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: List.generate(3, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedIndex == index
                              ? const Color.fromRGBO(235, 67, 53, 1)
                              : Colors.transparent,
                          width: 1,
                        ),
                      ),
                      child: Image.asset(
                        "Assets/images/cards${index + 1}.png",
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
