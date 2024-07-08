import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transfer_me/widgets/appbar.dart';

class ExchnagerateScreen extends StatelessWidget {
  const ExchnagerateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leftIconPath: "Assets/images/arrows-left.svg",
        title: "Exchange Rate",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "USD to PKR",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 17,
                ),
              ),
              const Text(
                "\$1 = Rs. 189.12",
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
                "\$35201.63",
                style: TextStyle(
                  fontFamily: "SanFran",
                  fontSize: 30,
                  color: Color.fromRGBO(82, 100, 190, 1),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("Assets/images/calendar.svg"),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "09-13 May",
                    style: TextStyle(
                      fontFamily: "SanFran",
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          "Assets/images/MaskGraph.png",
                          height: MediaQuery.of(context).size.height * 0.5,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                          left: 95,
                          top: 115,
                          child: SvgPicture.asset("Assets/images/25.svg"))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "14:00",
                        style: TextStyle(
                          fontFamily: "SanFran",
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Text(
                        "13:00",
                        style: TextStyle(
                          fontFamily: "SanFran",
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Text(
                        "16:00",
                        style: TextStyle(
                          fontFamily: "SanFran",
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Text(
                        "17:00",
                        style: TextStyle(
                          fontFamily: "SanFran",
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Text(
                        "18:00",
                        style: TextStyle(
                          fontFamily: "SanFran",
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Text(
                        "19:00",
                        style: TextStyle(
                          fontFamily: "SanFran",
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: Calendar,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> get Calendar {
    return [
      const Text(
        "1H",
        style: TextStyle(
          fontFamily: "SanFran",
          fontSize: 15,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      Container(
        width: 50,
        height: 25,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color.fromRGBO(82, 100, 190, 1),
        ),
        child: const Center(
          child: Text(
            "1D",
            style: TextStyle(
              fontFamily: "SanFran",
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
      ),
      const Text(
        "1W",
        style: TextStyle(
          fontFamily: "SanFran",
          fontSize: 15,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      const Text(
        "1M",
        style: TextStyle(
          fontFamily: "SanFran",
          fontSize: 15,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      const Text(
        "6M",
        style: TextStyle(
          fontFamily: "SanFran",
          fontSize: 15,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      const Text(
        "1Y",
        style: TextStyle(
          fontFamily: "SanFran",
          fontSize: 15,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      )
    ];
  }
}
