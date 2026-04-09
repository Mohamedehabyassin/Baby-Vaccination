// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsFlareGen {
  const $AssetsFlareGen();

  /// File path: assets/flare/Fingerprint Scanning (Lottie Import).flr
  String get fingerprintScanningLottieImport =>
      'assets/flare/Fingerprint Scanning (Lottie Import).flr';

  /// File path: assets/flare/README.md
  String get readme => 'assets/flare/README.md';

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
    readme,
    rekab,
    doctor,
    teddyTest,
  ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/google.svg
  SvgGenImage get google =>
      const SvgGenImage('assets/icons/google.svg', size: Size(262.0, 262.0));

  /// Directory path: assets/icons
  String get path => 'assets/icons';

  /// List of all assets
  List<SvgGenImage> get values => [google];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/1.jpg
  AssetGenImage get a1 => const AssetGenImage(
    'assets/images/1.jpg',
    size: const Size(512.0, 347.0),
  );

  /// File path: assets/images/ai_nurse.png
  AssetGenImage get aiNurse => const AssetGenImage(
    'assets/images/ai_nurse.png',
    size: const Size(1024.0, 1024.0),
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
    aiNurse,
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

  static const String aEnv = '.env';
  static const $AssetsFlareGen flare = $AssetsFlareGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsRiveGen rive = $AssetsRiveGen();

  /// List of all assets
  static List<String> get values => [aEnv];
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

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
