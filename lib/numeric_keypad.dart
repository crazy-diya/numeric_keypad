library numeric_keypad;

import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

class NumericKeypad extends StatefulWidget {
  final EdgeInsetsGeometry? outerPadding;
  final double? spaceBitweenFieldAndNumbrs;
  final double? underlineWidth;
  final double? underlineThilness;
  final double? keyButtonSize;
  Color? undelineColor;
  TextStyle fontstyle;
  TextStyle keyTextStyle;
  TextStyle okStyle;
  TextStyle hintStyle;
  double? backspaceSize;
  Color? backspaceColor;
  BoxDecoration? buttonDecoration;
  Function(String number)? okButton;
  Function(String number)? mobile;
  bool? isOkButton;
  NumericKeypad({
    super.key,
    this.spaceBitweenFieldAndNumbrs = 20,
    this.outerPadding = const EdgeInsets.all(50),
    this.underlineWidth = 200,
    required this.fontstyle,
    required this.keyTextStyle,
    required this.okStyle,
    this.undelineColor = const Color(0xFF42A5F5),
    this.underlineThilness = 2,
    this.keyButtonSize = 60,
    this.backspaceSize = 47,
    this.backspaceColor = const Color(0xFFaaaaaa),
    required this.buttonDecoration,
    this.okButton,
    required this.hintStyle,
    this.mobile,
    this.isOkButton = false,
  });

  @override
  State<NumericKeypad> createState() => _NumericKeypadState();
}

class _NumericKeypadState extends State<NumericKeypad> {
  /// Default.
  final countryPicker = const FlCountryCodePicker();
  final countryPickerWithParams = const FlCountryCodePicker(
    localize: true,
    showDialCode: true,
    showSearchBar: true,
  );
  String countryCode = "+94";
  List<String> pinCode = ["", "", "", "", "", "", "", "", ""];
  TextEditingController mobileNUmber = TextEditingController();
  String mobile = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.outerPadding!,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mobile Number",
                    style: widget.hintStyle,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(children: [
                    GestureDetector(
                      onTap: () async {
                        // Show the country code picker when tapped.
                        final code =
                            await countryPicker.showPicker(context: context);
                        // Null check
                        if (code != null) {
                          setState(() {
                            countryCode = code.dialCode;
                          });
                        }
                      },
                      child: Text(
                        countryCode,
                        style: widget.fontstyle,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      pinCode[0],
                      style: widget.fontstyle,
                    ),
                    Text(
                      pinCode[1],
                      style: widget.fontstyle,
                    ),
                    Text(
                      pinCode[2],
                      style: widget.fontstyle,
                    ),
                    Text(
                      pinCode[3],
                      style: widget.fontstyle,
                    ),
                    Text(
                      pinCode[4],
                      style: widget.fontstyle,
                    ),
                    Text(
                      pinCode[5],
                      style: widget.fontstyle,
                    ),
                    Text(
                      pinCode[6],
                      style: widget.fontstyle,
                    ),
                    Text(
                      pinCode[7],
                      style: widget.fontstyle,
                    ),
                    Text(
                      pinCode[8],
                      style: widget.fontstyle,
                    ),
                  ]),
                  SizedBox(
                    width: widget.underlineWidth,
                    child: Divider(
                      color: widget.undelineColor,
                      thickness: widget.underlineThilness,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: widget.spaceBitweenFieldAndNumbrs,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          _insertText("1");
                        },
                        child: Container(
                          height: widget.keyButtonSize,
                          width: widget.keyButtonSize,
                          decoration: widget.buttonDecoration,
                          alignment: Alignment.center,
                          child: Text(
                            "1",
                            style: widget.keyTextStyle,
                          ),
                        ),
                      ),
                      InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          _insertText("2");
                        },
                        child: Container(
                          height: widget.keyButtonSize,
                          width: widget.keyButtonSize,
                          decoration: widget.buttonDecoration,
                          alignment: Alignment.center,
                          child: Text(
                            "2",
                            style: widget.keyTextStyle,
                          ),
                        ),
                      ),
                      InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          _insertText("3");
                        },
                        child: Container(
                          height: widget.keyButtonSize,
                          width: widget.keyButtonSize,
                          decoration: widget.buttonDecoration,
                          alignment: Alignment.center,
                          child: Text(
                            "3",
                            style: widget.keyTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          _insertText("4");
                        },
                        child: Container(
                          height: widget.keyButtonSize,
                          width: widget.keyButtonSize,
                          decoration: widget.buttonDecoration,
                          alignment: Alignment.center,
                          child: Text(
                            "4",
                            style: widget.keyTextStyle,
                          ),
                        ),
                      ),
                      InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          _insertText("5");
                        },
                        child: Container(
                          height: widget.keyButtonSize,
                          width: widget.keyButtonSize,
                          decoration: widget.buttonDecoration,
                          alignment: Alignment.center,
                          child: Text(
                            "5",
                            style: widget.keyTextStyle,
                          ),
                        ),
                      ),
                      InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          _insertText("6");
                        },
                        child: Container(
                          height: widget.keyButtonSize,
                          width: widget.keyButtonSize,
                          decoration: widget.buttonDecoration,
                          alignment: Alignment.center,
                          child: Text(
                            "6",
                            style: widget.keyTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          _insertText("7");
                        },
                        child: Container(
                          height: widget.keyButtonSize,
                          width: widget.keyButtonSize,
                          decoration: widget.buttonDecoration,
                          alignment: Alignment.center,
                          child: Text(
                            "7",
                            style: widget.keyTextStyle,
                          ),
                        ),
                      ),
                      InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          _insertText("8");
                        },
                        child: Container(
                          height: widget.keyButtonSize,
                          width: widget.keyButtonSize,
                          decoration: widget.buttonDecoration,
                          alignment: Alignment.center,
                          child: Text(
                            "8",
                            style: widget.keyTextStyle,
                          ),
                        ),
                      ),
                      InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          _insertText("9");
                        },
                        child: Container(
                          height: widget.keyButtonSize,
                          width: widget.keyButtonSize,
                          decoration: widget.buttonDecoration,
                          alignment: Alignment.center,
                          child: Text(
                            "9",
                            style: widget.keyTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => (widget.isOkButton! &&
                                mobile.isNotEmpty &&
                                pinCode[8].isNotEmpty)
                            ? widget.okButton!("$countryCode$mobile")
                            : null,
                        child: SizedBox(
                          height: widget.keyButtonSize,
                          width: widget.keyButtonSize,
                          child: Center(
                              child: Text(
                            widget.isOkButton! ? "OK" : "",
                            style: widget.okStyle,
                          )),
                        ),
                      ),
                      InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          _insertText("0");
                        },
                        child: Container(
                          height: widget.keyButtonSize,
                          width: widget.keyButtonSize,
                          decoration: widget.buttonDecoration,
                          alignment: Alignment.center,
                          child: Text(
                            "0",
                            style: widget.keyTextStyle,
                          ),
                        ),
                      ),
                      InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          _backspace();
                        },
                        child: Container(
                          height: widget.keyButtonSize,
                          width: widget.keyButtonSize,
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.backspace,
                            color: widget.backspaceColor,
                            size: widget.backspaceSize,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _insertText(String myText) {
    if (pinCode[0].isEmpty) {
      if (myText != "0") {
        setState(() {
          pinCode[0] = myText;
        });
      }
    } else if (pinCode[1].isEmpty) {
      setState(() {
        pinCode[1] = myText;
      });
    } else if (pinCode[2].isEmpty) {
      setState(() {
        pinCode[2] = myText;
      });
    } else if (pinCode[3].isEmpty) {
      setState(() {
        pinCode[3] = myText;
      });
    } else if (pinCode[4].isEmpty) {
      setState(() {
        pinCode[4] = myText;
      });
    } else if (pinCode[5].isEmpty) {
      setState(() {
        pinCode[5] = myText;
      });
    } else if (pinCode[6].isEmpty) {
      setState(() {
        pinCode[6] = myText;
      });
    } else if (pinCode[7].isEmpty) {
      setState(() {
        pinCode[7] = myText;
      });
    } else if (pinCode[8].isEmpty) {
      setState(() {
        pinCode[8] = myText;
      });
      String pin = "";
      for (var element in pinCode) {
        pin = "$pin$element";
      }
      if (pin.isNotEmpty) {
        mobile = pin;
      }
      if (widget.isOkButton == false) {
        widget.mobile!("$countryCode$mobile");
      }
    }
  }

  void _backspace() {
    if (pinCode[8].isNotEmpty) {
      setState(() {
        pinCode[8] = "";
      });
    } else if (pinCode[7].isNotEmpty) {
      setState(() {
        pinCode[7] = "";
      });
    } else if (pinCode[6].isNotEmpty) {
      setState(() {
        pinCode[6] = "";
      });
    } else if (pinCode[5].isNotEmpty) {
      setState(() {
        pinCode[5] = "";
      });
    } else if (pinCode[4].isNotEmpty) {
      setState(() {
        pinCode[4] = "";
      });
    } else if (pinCode[3].isNotEmpty) {
      setState(() {
        pinCode[3] = "";
      });
    } else if (pinCode[2].isNotEmpty) {
      setState(() {
        pinCode[2] = "";
      });
    } else if (pinCode[1].isNotEmpty) {
      setState(() {
        pinCode[1] = "";
      });
    } else if (pinCode[0].isNotEmpty) {
      setState(() {
        pinCode[0] = "";
      });
    }
  }
}
