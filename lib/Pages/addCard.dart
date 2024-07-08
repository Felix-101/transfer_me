import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transfer_me/widgets/appbar.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  _AddCardScreenState createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/images/arrows-left.svg",
        title: "Add a Card",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "To add a new card, please fill out the fields \nbelow carefully in order to add card \nsuccessfully.",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 14,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                " Card Number",
                style: const TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(82, 100, 190, 1),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(5),
                    child: isSelected
                        ? const Icon(Icons.check,
                            color: Color.fromRGBO(82, 100, 190, 1))
                        : null,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(82, 100, 190, 1),
                    ),
                  ),
                ),
                onChanged: (text) {
                  setState(() {
                    isSelected = text.isNotEmpty;
                  });
                },
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Holder’s Name",
                style: const TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(82, 100, 190, 1),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(5),
                    child: isSelected
                        ? const Icon(Icons.check,
                            color: Color.fromRGBO(82, 100, 190, 1))
                        : null,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(82, 100, 190, 1),
                    ),
                  ),
                ),
                onChanged: (text) {
                  setState(() {
                    isSelected = text.isNotEmpty;
                  });
                },
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Expiry Date",
                style: const TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(82, 100, 190, 1),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(5),
                    child: isSelected
                        ? const Icon(Icons.check,
                            color: Color.fromRGBO(82, 100, 190, 1))
                        : null,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(82, 100, 190, 1),
                    ),
                  ),
                ),
                onChanged: (text) {
                  setState(() {
                    isSelected = text.isNotEmpty;
                  });
                },
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "CVV",
                style: const TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(82, 100, 190, 1),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(5),
                    child: isSelected
                        ? const Icon(Icons.check,
                            color: Color.fromRGBO(82, 100, 190, 1))
                        : null,
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(82, 100, 190, 1),
                    ),
                  ),
                ),
                onChanged: (text) {
                  setState(() {
                    isSelected = text.isNotEmpty;
                  });
                },
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    /*   onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contect) => SelectCardScreen()));
                    }, */
                    child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(82, 100, 190, 1),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Next",
                            style: TextStyle(
                              fontFamily: "SanFran",
                              fontSize: 16,
                              color: const Color.fromARGB(255, 255, 253, 253),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
