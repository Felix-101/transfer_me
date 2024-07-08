import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transfer_me/widgets/appbar.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> profileInfo = [
      {"label": "Account Number", "value": "3024982387"},
      {"label": "Username", "value": "Aryan.Stirk2"},
      {"label": "Email", "value": "aryan.stirk2nd@gmail.com"},
      {"label": "Mobile Phone", "value": "+620932938232"},
      {"label": "Address", "value": "Gotham Road 21..."},
    ];

    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/images/arrows-left.svg",
        title: "Profile Settings",
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
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Your Profile Information",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'SanFran',
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(135, 135, 135, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Image.asset("Assets/images/profile.png"),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset("Assets/images/edit.svg"),
                            SvgPicture.asset("Assets/images/pen.svg"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Personal information",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'SanFran',
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(81, 100, 191, 1),
                ),
              ),
              SizedBox(height: 30),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: profileInfo.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ProfileInfoRow(
                      label: profileInfo[index]["label"]!,
                      value: profileInfo[index]["value"]!,
                    ),
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

class ProfileInfoRow extends StatelessWidget {
  final String label;
  final String value;

  const ProfileInfoRow({required this.label, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 70,
      decoration: BoxDecoration(
        color: Color.fromRGBO(244, 244, 244, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'SanFran',
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(81, 100, 191, 1),
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'SanFran',
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(0, 26, 77, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
