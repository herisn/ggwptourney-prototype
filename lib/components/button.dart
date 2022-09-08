import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String? label;
  final bool? disabled;
  final bool? primary;
  final Function()? onPressed;
  const PrimaryButton({ Key? key, this.label, this.disabled = false, this.primary = true, this.onPressed }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return primary!
    ?ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: Colors.red,
        padding: EdgeInsets.fromLTRB(40, 24, 40, 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
      ),
      child: Text(label!, style: TextStyle(fontSize: 18),),
      onPressed: disabled!? null : onPressed,
    )
    :OutlinedButton(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        primary: Colors.red,
        onSurface: Colors.red,
        padding: EdgeInsets.fromLTRB(40, 24, 40, 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(color: Colors.red)
      ),
      child: Text(label!, style: TextStyle(fontSize: 18),),
      onPressed: disabled!? null : onPressed,
    );
  }
}