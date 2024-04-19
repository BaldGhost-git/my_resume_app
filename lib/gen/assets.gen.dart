/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/DMSans-VariableFont_opsz_wght.ttf
  String get dMSansVariableFontOpszWght =>
      'assets/fonts/DMSans-VariableFont_opsz_wght.ttf';

  /// File path: assets/fonts/Quicksand-VariableFont_wght.ttf
  String get quicksandVariableFontWght =>
      'assets/fonts/Quicksand-VariableFont_wght.ttf';

  /// List of all assets
  List<String> get values =>
      [dMSansVariableFontOpszWght, quicksandVariableFontWght];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ict_competition_cert.png
  AssetGenImage get ictCompetitionCert =>
      const AssetGenImage('assets/images/ict_competition_cert.png');

  /// File path: assets/images/profile_photo.jpg
  AssetGenImage get profilePhoto =>
      const AssetGenImage('assets/images/profile_photo.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [ictCompetitionCert, profilePhoto];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/icons8-dart.svg
  SvgGenImage get icons8Dart => const SvgGenImage('assets/svg/icons8-dart.svg');

  /// File path: assets/svg/icons8-figma.svg
  SvgGenImage get icons8Figma =>
      const SvgGenImage('assets/svg/icons8-figma.svg');

  /// File path: assets/svg/icons8-flutter.svg
  SvgGenImage get icons8Flutter =>
      const SvgGenImage('assets/svg/icons8-flutter.svg');

  /// File path: assets/svg/icons8-java.svg
  SvgGenImage get icons8Java => const SvgGenImage('assets/svg/icons8-java.svg');

  /// File path: assets/svg/icons8-nodejs.svg
  SvgGenImage get icons8Nodejs =>
      const SvgGenImage('assets/svg/icons8-nodejs.svg');

  /// File path: assets/svg/icons8-whatsapp.svg
  SvgGenImage get icons8Whatsapp =>
      const SvgGenImage('assets/svg/icons8-whatsapp.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icons8Dart,
        icons8Figma,
        icons8Flutter,
        icons8Java,
        icons8Nodejs,
        icons8Whatsapp
      ];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const AssetGenImage icons8Resume96 =
      AssetGenImage('assets/icons8-resume-96.png');
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();

  /// List of all assets
  static List<AssetGenImage> get values => [icons8Resume96];
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
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
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
