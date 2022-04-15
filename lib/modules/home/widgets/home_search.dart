import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Type in your text",
          prefixIcon: Icon(
            Icons.search,
            size: 24,
            color: Colors.grey,
          ),
          suffixIcon: Icon(
            Icons.tune_outlined,
            size: 24,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
