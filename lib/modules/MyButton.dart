import 'package:flutter/material.dart';

class clcButton extends StatelessWidget {
  clcButton(this.btntxt, this.btncolor, this.txtcolor);
  String btntxt;
  Color btncolor;
  Color txtcolor;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          shape: BoxShape.circle
      ),
      child: TextButton(
        onPressed: () {

        },
        child: Text(btntxt,
          style:TextStyle(
            fontSize:35,
            color:txtcolor,

          ),
        ),
      ),
    );;
  }
}


