import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/text_styles.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      appBar: AppBar(
        title: const Text('IronForge Gym'),
        elevation: 0,
        backgroundColor: AppColors.lightSurface,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: AppColors.primaryGradient,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back!',
                      style: AppTextStyles.headline4.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Ready to crush your fitness goals?',
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // Quick Stats
              Text('Today\'s Stats', style: AppTextStyles.headline5),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _StatCard(
                      title: 'Calories',
                      value: '450',
                      unit: 'kcal',
                      icon: Icons.local_fire_department,
                      color: AppColors.error,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _StatCard(
                      title: 'Water',
                      value: '2.5',
                      unit: 'L',
                      icon: Icons.water_drop,
                      color: AppColors.info,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Workout Plans
              Text('Start Workout', style: AppTextStyles.headline5),
              const SizedBox(height: 12),
              _WorkoutCard(
                title: 'Upper Body',
                description: '8 exercises • 45 minutes',
                icon: Icons.fitness_center,
                onTap: () {},
              ),
              const SizedBox(height: 12),
              _WorkoutCard(
                title: 'Lower Body',
                description: '10 exercises • 50 minutes',
                icon: Icons.directions_run,
                onTap: () {},
              ),
              const SizedBox(height: 24),
              // Featured Section
              Text('Featured', style: AppTextStyles.headline5),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.lightSurface,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.border),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Beginner Workout Plan',
                      style: AppTextStyles.headline6,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '4-week program designed for beginners',
                      style: AppTextStyles.bodySmall,
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Start Now'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Workouts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Diet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String unit;
  final IconData icon;
  final Color color;

  const _StatCard({
    required this.title,
    required this.value,
    required this.unit,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.lightSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 8),
          Text(title, style: AppTextStyles.bodySmall),
          const SizedBox(height: 4),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: value,
                  style: AppTextStyles.headline5.copyWith(
                    color: color,
                  ),
                ),
                TextSpan(
                  text: ' $unit',
                  style: AppTextStyles.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _WorkoutCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  const _WorkoutCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: AppColors.primary),
        title: Text(title, style: AppTextStyles.headline6),
        subtitle: Text(description, style: AppTextStyles.bodySmall),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
