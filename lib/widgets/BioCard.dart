import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  const BioCard({
    super.key,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.title,
    required this.subTitle,
  });

  final IconData leadingIcon;
  final IconData trailingIcon;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(leadingIcon),
        ),
        trailing: Icon(trailingIcon, color: Colors.blue,),
        title: Text(title),
        subtitle: Text(
          subTitle,
          style: const TextStyle(fontFamily: 'Kanit'),
        ),
      ),
    );
  }
}
