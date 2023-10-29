/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/benz.png
  AssetGenImage get benz => const AssetGenImage('assets/images/png/benz.png');

  /// File path: assets/images/png/besenior_logo.png
  AssetGenImage get beseniorLogo =>
      const AssetGenImage('assets/images/png/besenior_logo.png');

  /// File path: assets/images/png/bmw.png
  AssetGenImage get bmw => const AssetGenImage('assets/images/png/bmw.png');

  /// File path: assets/images/png/box.png
  AssetGenImage get box => const AssetGenImage('assets/images/png/box.png');

  /// File path: assets/images/png/bs_logo_textfield.png
  AssetGenImage get bsLogoTextfield =>
      const AssetGenImage('assets/images/png/bs_logo_textfield.png');

  /// File path: assets/images/png/category_icon.png
  AssetGenImage get categoryIcon =>
      const AssetGenImage('assets/images/png/category_icon.png');

  /// File path: assets/images/png/category_icon2.png
  AssetGenImage get categoryIcon2 =>
      const AssetGenImage('assets/images/png/category_icon2.png');

  /// File path: assets/images/png/home_icon.png
  AssetGenImage get homeIcon =>
      const AssetGenImage('assets/images/png/home_icon.png');

  /// File path: assets/images/png/home_icon2.png
  AssetGenImage get homeIcon2 =>
      const AssetGenImage('assets/images/png/home_icon2.png');

  /// File path: assets/images/png/qorfe.png
  AssetGenImage get qorfe => const AssetGenImage('assets/images/png/qorfe.png');

  /// File path: assets/images/png/tara.png
  AssetGenImage get tara => const AssetGenImage('assets/images/png/tara.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        benz,
        beseniorLogo,
        bmw,
        box,
        bsLogoTextfield,
        categoryIcon,
        categoryIcon2,
        homeIcon,
        homeIcon2,
        qorfe,
        tara
      ];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/amazing.svg
  String get amazing => 'assets/images/svg/amazing.svg';

  /// File path: assets/images/svg/person_icon.svg
  String get personIcon => 'assets/images/svg/person_icon.svg';

  /// File path: assets/images/svg/person_icon2.svg
  String get personIcon2 => 'assets/images/svg/person_icon2.svg';

  /// List of all assets
  List<String> get values => [amazing, personIcon, personIcon2];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
