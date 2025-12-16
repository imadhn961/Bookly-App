import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
 const customButton({super.key,this.sized,required this.text,required this.BakgroundColor,required this.TextColor,required this.BorderR, this.onPressed});
  final BakgroundColor;
  final TextColor;
  final BorderRadius BorderR;
  final String text ;
  final double? sized ;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: BakgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderR,
          ),
        ),
        child: Text(
          '${text}',
          style: Styles.textStyle16.copyWith(
            color: TextColor,
            fontWeight: FontWeight.bold,
            fontSize: sized,
          ),
        ),
      ),
    );
  }
}
