import 'package:baby_vaccination/core/constants/hive_constants.dart';
import 'package:baby_vaccination/features/manage_baby/data/models/baby_model.dart';
import 'package:hive_ce_flutter/adapters.dart';

class HiveService {
  static Future<void> init() async {
    await Hive.initFlutter();

    // Register Adapters
    Hive.registerAdapter(BabyModelAdapter());

    // Open Boxes
    await Hive.openBox<BabyModel>(HiveConstants.babyBoxName);
  }
}
