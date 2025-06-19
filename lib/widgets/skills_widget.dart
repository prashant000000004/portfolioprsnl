import 'package:flutter/material.dart';

/// Data model for each skill
typedef Skill = _Skill;

class _Skill {
  final String name;
  final IconData icon;
  final double level; // 0.0 to 1.0
  _Skill(this.name, this.icon, this.level);
}

/// Reusable heading widget
class SectionHeading extends StatelessWidget {
  final String title;

  const SectionHeading({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        textAlign: TextAlign.start,
      ),
    );
  }
}

/// A single animated skill card
class SkillCard extends StatelessWidget {
  final _Skill skill;
  final Duration delay;

  const SkillCard({Key? key, required this.skill, required this.delay})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: skill.level),
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Opacity(
          opacity: value > 0.0 ? 1 : 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.5, end: 1.0),
                  duration: const Duration(milliseconds: 600),
                  builder: (context, scale, _) {
                    return Transform.scale(
                      scale: scale,
                      child: Icon(skill.icon, size: 30),
                    );
                  },
                ),
                const SizedBox(height: 4),
                Text(skill.name, style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 4),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: value,
                    minHeight: 6,
                    backgroundColor: Colors.grey.shade300,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '${(value * 100).toInt()}%',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// Skill section with heading
class SkillSection extends StatelessWidget {
  final String heading;
  final List<_Skill> skills;

  const SkillSection({Key? key, required this.heading, required this.skills})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(title: heading),
        LayoutBuilder(
          builder: (context, constraints) {
            // final crossCount = (constraints.maxWidth ~/ 150).clamp(2, 4);
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1.8,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemCount: skills.length,
              itemBuilder: (context, index) {
                final skill = skills[index];
                return SkillCard(
                  skill: skill,
                  delay: Duration(milliseconds: 100 * index),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
