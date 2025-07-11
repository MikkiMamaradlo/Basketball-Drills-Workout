class Drill {
  final String name;
  final int duration; // in minutes
  final String category;
  final String icon;
  final bool isCompleted;

  Drill({
    required this.name,
    required this.duration,
    required this.category,
    required this.icon,
    this.isCompleted = false,
  });

  Drill copyWith({
    String? name,
    int? duration,
    String? category,
    String? icon,
    bool? isCompleted,
  }) {
    return Drill(
      name: name ?? this.name,
      duration: duration ?? this.duration,
      category: category ?? this.category,
      icon: icon ?? this.icon,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}

class DrillData {
  static List<Drill> getAllDrills() {
    return [
      Drill(
        name: 'Zigzag Dribble',
        duration: 5,
        category: 'Handling',
        icon: '🏀',
      ),
      Drill(
        name: 'Free Throw Practice',
        duration: 6,
        category: 'Shooting',
        icon: '🎯',
      ),
      Drill(
        name: 'Closeout Drill',
        duration: 4,
        category: 'Defense',
        icon: '🛡️',
      ),
      Drill(
        name: 'Crossover Drill',
        duration: 6,
        category: 'Handling',
        icon: '⚡',
      ),
    ];
  }

  static List<Drill> getTodaysRoutine() {
    return [
      Drill(
        name: 'Zigzag Dribble',
        duration: 5,
        category: 'Handling',
        icon: '🏀',
        isCompleted: true,
      ),
      Drill(
        name: 'Free Throw Practice',
        duration: 6,
        category: 'Shooting',
        icon: '🎯',
        isCompleted: true,
      ),
      Drill(
        name: 'Closeout Drill',
        duration: 4,
        category: 'Defense',
        icon: '🛡️',
      ),
    ];
  }
}
