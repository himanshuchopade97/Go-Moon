import "package:flutter/material.dart";

// ignore: must_be_immutable
class CustomDropdownButtonClass extends StatelessWidget{
  List<String> values;
  double width;

  // ignore: use_key_in_widget_constructors
  CustomDropdownButtonClass({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width*0.05),
      decoration: BoxDecoration(color: const Color.fromRGBO(53, 53, 53, 1.0), borderRadius: BorderRadius.circular(10)),
      child: DropdownButton(
        value: values.first,
        onChanged: (_) {},
        items: values.map((e) {
          // ignore: sort_child_properties_last
          return DropdownMenuItem(child: Text(e), value: e);
        }).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        

      ),
    );
  }

}