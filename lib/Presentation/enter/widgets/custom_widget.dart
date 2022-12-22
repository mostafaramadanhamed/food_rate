
import 'package:flutter/material.dart';

TextFormField buildTextFormField({required String label, required void Function(String)? onChanged, required TextEditingController controller}) {
  return TextFormField(
    decoration: InputDecoration(
      labelText:label ,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
    controller: controller,
    onChanged: onChanged,
  );
}
Container buildButton(BuildContext context,{required String text,required void Function()? onPressed}) {
  return Container(
    height: MediaQuery.of(context).size.height/12,
    width: MediaQuery.of(context).size.width/1.2,
    decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(25)
    ),

    child: TextButton(onPressed: onPressed, child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 25),)),
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