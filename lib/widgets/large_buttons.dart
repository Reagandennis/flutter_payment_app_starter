import 'package:flutter/cupertino.dart';
import 'package:flutter_payment_app/component/colors.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final Function()? onTap;
  final bool? isBorder;
  const AppLargeButton(
      {Key? key,
      this.backgroundColor: AppColor.mainColor,
      this.textColor,
      this.onTap,
      this.isBorder = false,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2, color: AppColor.mainColor)),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 50, color: textColor),
        ),
      ),
    );
  }
}
