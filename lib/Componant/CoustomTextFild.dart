import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.hentText,
    this.onChanged,
    this.keyboardType,
  });
  String? hentText;
  TextInputType? keyboardType;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      //
      style: TextStyle(
        // color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
        // fontFamily: 'pacifico',
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hentText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 2.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}

//
//
//
//
//
