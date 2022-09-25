import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class modified_text extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontsize;
  final FontWeight? fontWeight;

  modified_text({
    this.text,
    this.color,
    this.fontsize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: GoogleFonts.poppins(
            color: color, fontSize: fontsize, fontWeight: fontWeight));
  }
}
