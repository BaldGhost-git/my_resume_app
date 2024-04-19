import 'package:flutter_riverpod/flutter_riverpod.dart';

final sectionToggle = NotifierProvider<SectionNotifier, Section?>(SectionNotifier.new);

class SectionNotifier extends Notifier<Section?> {
  @override
  Section? build() {
    return null;
  }

  void showAchievements() => state = Section.achievements;
  void showExperiences() => state = Section.experiences;
  void showExpertise() => state = Section.expertise;
  
}

enum Section {
  achievements,
  experiences,
  expertise,
}