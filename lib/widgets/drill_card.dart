import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/drill.dart';
import '../screens/drill_details_screen.dart';

class DrillCard extends StatelessWidget {
  final Drill drill;
  final String language;

  const DrillCard({super.key, required this.drill, required this.language});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      color: Theme.of(context).cardColor,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        leading:
            const Icon(Icons.sports_basketball, color: Colors.amber, size: 32),
        title: Text(
          drill.getTitle(language),
          style: GoogleFonts.bebasNeue(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '${drill.duration} sec',
          style: const TextStyle(fontSize: 15),
        ),
        trailing:
            Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 18),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  DrillDetailsScreen(drill: drill, language: language),
            ),
          );
        },
      ),
    );
  }
}
