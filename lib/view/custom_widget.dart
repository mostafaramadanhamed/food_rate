
import 'package:flutter/material.dart';

TextFormField buildTextFormField({required String label, required void Function(String)? onChanged}) {
  return TextFormField(
    decoration: InputDecoration(
      labelText:label ,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
    onChanged: onChanged,
  );
}

Row buildRowInBottom(
    {required String text,
      required String textButton,
      required void Function()? buttonOnPressed}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
      TextButton(
        onPressed: buttonOnPressed,
        child: Text(
          textButton,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.blueAccent,
            fontSize: 17,
          ),
        ),
      )
    ],
  );
}