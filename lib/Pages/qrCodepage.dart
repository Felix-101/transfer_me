import 'package:flutter/material.dart';

import 'package:transfer_me/widgets/appbar.dart';

class QrcodeScreen extends StatelessWidget {
  const QrcodeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/images/arrows-left.svg",
        title: "Scan Item",
        onLeftIconTap: () {
          Navigator.of(context).pop();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Scan a QR Code",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'SanFran',
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Image.asset("Assets/images/ScanQR.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width * 0.62,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(241, 245, 252, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Please, align QR Code within the frame to make scanning easily detectable.",
                      style: TextStyle(
                        fontFamily: 'SanFran',
                        fontSize: 16,
                        color: Color.fromRGBO(82, 100, 190, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
