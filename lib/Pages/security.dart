import 'package:flutter/material.dart';
import 'package:transfer_me/widgets/appbar.dart';

class SecurityQuestions extends StatefulWidget {
  const SecurityQuestions({super.key});

  _SecurityQuestionsState createState() => _SecurityQuestionsState();
}

class _SecurityQuestionsState extends State<SecurityQuestions> {
  final _formKey = GlobalKey<FormState>();
  final List<bool> _isFilled = [false, false, false, false, false];

  bool get _canProceed => _isFilled.where((element) => element).length >= 3;

  void _checkFilled(int index, String value) {
    setState(() {
      _isFilled[index] = value.isNotEmpty;
    });
  }

  Widget _buildTextField(String hintText, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: "SanFran",
            fontSize: 15,
            color: Color.fromRGBO(82, 100, 190, 1),
          ),
          suffixIcon: _isFilled[index]
              ? const Icon(
                  Icons.check,
                  color: Color.fromRGBO(82, 100, 190, 1),
                )
              : null,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromRGBO(82, 100, 190, 1),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onChanged: (text) => _checkFilled(index, text),
        validator: (value) {
          if (_canProceed) return null;
          if (value == null || value.isEmpty) {
            return 'Please enter an answer';
          }
          return null;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/images/arrows-left.svg",
        onLeftIconTap: () {
          Navigator.pop(context);
        },
        title: "Security Questions",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Please, add at least 3 Questions to keep your \naccount secured in case you forget your \ncredentials.",
                  style: TextStyle(
                    fontFamily: "SanFran",
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                _buildTextField("What is your caste?", 0),
                _buildTextField("Name of your birthplace?", 1),
                _buildTextField("What is your elder brother’s name?", 2),
                _buildTextField("What is your grandfather's name?", 3),
                _buildTextField("What is your mother's name?", 4),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // Process data
                        }
                        ;

                        // Navigator.push(context, route)
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: _canProceed
                              ? const Color.fromRGBO(82, 100, 190, 1)
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Save",
                            style: TextStyle(
                              fontFamily: "SanFran",
                              fontSize: 16,
                              color: Color.fromARGB(255, 255, 253, 253),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
