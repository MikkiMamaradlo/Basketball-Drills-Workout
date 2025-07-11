import 'package:flutter/material.dart';
import '../models/drill.dart';
import '../routes/navigation_service.dart';

class DrillScreen extends StatelessWidget {
  final Drill drill;

  const DrillScreen({
    super.key,
    required this.drill,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drill.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(
                  Icons.sports_basketball,
                  size: 80,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                drill.name,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Duration: ${drill.duration} minutes',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Category: ${drill.category}',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Instructions',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                _getDrillInstructions(drill.name),
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: InkWell(
                  onTap: () {
                    NavigationService.goToWorkout();
                  },
                  child: const Text(
                    'Start Drill',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getDrillInstructions(String drillName) {
    switch (drillName) {
      case 'Zigzag Dribble':
        return 'Set up cones in a zigzag pattern. Dribble through the cones using alternating hands, focusing on control and speed.';
      case 'Free Throw Practice':
        return 'Stand at the free throw line. Focus on your shooting form and follow through. Aim for consistency in your routine.';
      case 'Closeout Drill':
        return 'Practice defensive closeouts. Sprint towards the offensive player, then break down into a defensive stance.';
      case 'Crossover Drill':
        return 'Practice crossover dribbles between cones. Focus on keeping the ball low and protecting it with your body.';
      default:
        return 'Follow the standard drill instructions and focus on proper form and technique.';
    }
  }
}
