import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transfer_me/widgets/appbar.dart';

class SecurityQuestion extends StatefulWidget {
  const SecurityQuestion({super.key});
  @override
  _SecurityQuestionState createState() => _SecurityQuestionState();
}

class _SecurityQuestionState extends State<SecurityQuestion> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/images/arrows-left.svg",
        title: "Security Question",
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
              const SizedBox(
                height: 15,
              ),
              const Text(
                "What was your \nFirst School’s \nName? ",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(82, 100, 190, 1),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Please, write a short answer in the field below.",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Write your answer here",
                  hintStyle: const TextStyle(
                    fontFamily: "SanFran",
                    fontSize: 15,
                    color: Color.fromRGBO(82, 100, 190, 1),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(5),
                    child: isSelected
                        ? const Icon(Icons.check,
                            color: Color.fromRGBO(82, 100, 190, 1))
                        : null,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(82, 100, 190, 1),
                      ),
                      borderRadius: BorderRadius.circular(20)),
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
                    /*    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contect) =>
                                  ()));
                    }, */
                    child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(82, 100, 190, 1),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Padding(
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
