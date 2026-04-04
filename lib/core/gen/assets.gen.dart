// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsFlareGen {
  const $AssetsFlareGen();

  /// File path: assets/flare/Fingerprint Scanning (Lottie Import).flr
  String get fingerprintScanningLottieImport =>
      'assets/flare/Fingerprint Scanning (Lottie Import).flr';

  /// File path: assets/flare/Rekab.flr
  String get rekab => 'assets/flare/Rekab.flr';

  /// File path: assets/flare/doctor.flr
  String get doctor => 'assets/flare/doctor.flr';

  /// File path: assets/flare/teddy_test.flr
  String get teddyTest => 'assets/flare/teddy_test.flr';

  /// Directory path: assets/flare
  String get path => 'assets/flare';

  /// List of all assets
  List<String> get values => [
    fingerprintScanningLottieImport,
    rekab,
    doctor,
    teddyTest,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/1.jpg
  AssetGenImage get a1 => const AssetGenImage(
    'assets/images/1.jpg',
    size: const Size(512.0, 347.0),
  );

  /// File path: assets/images/download.png
  AssetGenImage get download => const AssetGenImage(
    'assets/images/download.png',
    size: const Size(225.0, 225.0),
  );

  /// File path: assets/images/facebook.png
  AssetGenImage get facebook => const AssetGenImage(
    'assets/images/facebook.png',
    size: const Size(512.0, 512.0),
  );

  /// File path: assets/images/google.png
  AssetGenImage get google => const AssetGenImage(
    'assets/images/google.png',
    size: const Size(512.0, 512.0),
  );

  /// File path: assets/images/h.jpg
  AssetGenImage get hJpg => const AssetGenImage(
    'assets/images/h.jpg',
    size: const Size(626.0, 391.0),
  );

  /// File path: assets/images/h.png
  AssetGenImage get hPng => const AssetGenImage(
    'assets/images/h.png',
    size: const Size(860.0, 544.0),
  );

  /// File path: assets/images/logo.jpeg
  AssetGenImage get logo => const AssetGenImage(
    'assets/images/logo.jpeg',
    size: const Size(1024.0, 1024.0),
  );

  /// File path: assets/images/section-2.png
  AssetGenImage get section2 => const AssetGenImage(
    'assets/images/section-2.png',
    size: const Size(650.0, 477.0),
  );

  /// Directory path: assets/images
  String get path => 'assets/images';

  /// List of all assets
  List<AssetGenImage> get values => [
    a1,
    download,
    facebook,
    google,
    hJpg,
    hPng,
    logo,
    section2,
  ];
}

class $AssetsRiveGen {
  const $AssetsRiveGen();

  /// File path: assets/rive/bunny.riv
  String get bunny => 'assets/rive/bunny.riv';

  /// Directory path: assets/rive
  String get path => 'assets/rive';

  /// List of all assets
  List<String> get values => [bunny];
}

class Assets {
  const Assets._();

  static const $AssetsFlareGen flare = $AssetsFlareGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsRiveGen rive = $AssetsRiveGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
