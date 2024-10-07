import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islam/moduls/Quran_view/Quranview.dart';

class SuraTitleWidget extends StatelessWidget {
  final Sura suradata;
  const SuraTitleWidget({super.key,  required this.suradata});

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return  Row(
      children: [
        Expanded(
          child: Text(
            suradata.number,textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge,
          ),
        ),
       const  SizedBox(
            height: 41,
            child: VerticalDivider()),
        Expanded(
          child: Text(
            suradata.name,textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
