import 'package:flutter/material.dart';

class CustomButtonNote extends StatelessWidget {
  const CustomButtonNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
          child: Text("Add",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500))),
    );
  }
}
