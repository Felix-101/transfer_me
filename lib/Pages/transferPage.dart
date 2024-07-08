import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transfer_me/widgets/appbar.dart';
import 'selectcard.dart';

class MoneyTransferScreen extends StatefulWidget {
  const MoneyTransferScreen({super.key});

  @override
  _MoneyTransferScreenState createState() => _MoneyTransferScreenState();
}

class _MoneyTransferScreenState extends State<MoneyTransferScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leftIconPath: "Assets/images/arrows-left.svg",
        title: "Money Transfer",
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
                "Please, enter the receiver’s bank account number \nin the below field.",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Account No",
                style: const TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 15,
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contect) => SelectCardScreen()));
                    },
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
