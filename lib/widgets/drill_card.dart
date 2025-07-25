import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/drill.dart';

class DrillCard extends StatelessWidget {
  final Drill drill;
  final String language;

  const DrillCard({super.key, required this.drill, required this.language});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Theme.of(context).cardColor,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        leading: const Icon(Icons.sports_basketball, color: Colors.amber),
        title: Text(
          drill.getTitle(language),
          style: GoogleFonts.bebasNeue(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '${drill.duration} sec',
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
