import 'package:flutter/material.dart';
import 'package:project_local_storage/view/widgets/custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28, color: Colors.white),
        ),
         CustomIconSearch(
          icon:icon ,
        ),
      ],
    );
  }
}
