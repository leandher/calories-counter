import 'package:flutter/material.dart';

class CicleButton extends StatelessWidget {
  final Function onTap;
  final IconData icon;

  const CicleButton({Key key, this.onTap, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).primaryColorDark,
              width: 4.0,
            ),
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(1000.0),
            onTap: onTap,
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Icon(
                icon,
                color: Theme.of(context).primaryColorDark,
              ),
            ),
          ),
        ));
  }
}
