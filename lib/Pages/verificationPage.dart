import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transfer_me/widgets/appbar.dart';

class ResgistrationSuccesfulScreen extends StatelessWidget {
  const ResgistrationSuccesfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        background: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: SvgPicture.asset('Assets/images/Ellipse1.svg'),
                    ),
                    Image.asset(
                      "Assets/images/Ellipse2.png",
                    ),
                    SvgPicture.asset('Assets/images/check.svg'),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Congrats!",
                  style: TextStyle(
                    fontFamily: "SanFran",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(82, 100, 190, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Verification has been done \nSuccessfully",
                  style: TextStyle(
                    fontFamily: "SanFran",
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(82, 100, 190, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 80,
                ),
                GestureDetector(
                  /*  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderScreen()),
                    );
                  }, */
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(82, 100, 190, 1),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        "Great!",
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
