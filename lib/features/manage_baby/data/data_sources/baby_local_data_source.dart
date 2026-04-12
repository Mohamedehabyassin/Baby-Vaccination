import 'package:baby_vaccination/core/constants/hive_constants.dart';
import 'package:baby_vaccination/features/manage_baby/data/models/baby_model.dart';
import 'package:hive_ce/hive.dart';
import 'package:injectable/injectable.dart';

abstract class BabyLocalDataSource {
  Future<void> cacheBabies(List<BabyModel> babies);
  Future<List<BabyModel>> getCachedBabies();
  Future<void> clearCache();
}

@LazySingleton(as: BabyLocalDataSource)
class BabyLocalDataSourceImpl implements BabyLocalDataSource {
  final Box<BabyModel> _box = Hive.box<BabyModel>(HiveConstants.babyBoxName);

  @override
  Future<void> cacheBabies(List<BabyModel> babies) async {
    await _box.clear();
    final Map<String, BabyModel> babyMap = {
      for (var baby in babies) baby.id ?? DateTime.now().toString(): baby,
    };
    await _box.putAll(babyMap);
  }

  @override
  Future<List<BabyModel>> getCachedBabies() async {
    return _box.values.toList();
  }

  @override
  Future<void> clearCache() async {
    await _box.clear();
  }
}
