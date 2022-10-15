import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/Profile.dart';

class ItemProfile extends StatelessWidget {
  const ItemProfile({Key? key, required this.data, required this.onClick}) : super(key: key);

  final Profile data;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(data),
      child: Container(
        height: 100,
        margin: const EdgeInsets.all(8),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            )),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(0), bottomLeft: Radius.circular(8), bottomRight: Radius.circular(0)),
                    image: DecorationImage(image: AssetImage(data.image), fit: BoxFit.fitWidth)),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.name, style: GoogleFonts.openSans(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
                    const SizedBox(height: 8),
                    Text(data.role, style: GoogleFonts.openSans(textStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 14)))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
