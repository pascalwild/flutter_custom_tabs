// Autogenerated from Pigeon (v14.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import, no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

PlatformException _createConnectionError(String channelName) {
  return PlatformException(
    code: 'channel-error',
    message: 'Unable to establish connection on channel: "$channelName".',
  );
}

class CustomTabsIntentOptions {
  CustomTabsIntentOptions({
    this.colorSchemes,
    this.urlBarHidingEnabled,
    this.shareState,
    this.showTitle,
    this.instantAppsEnabled,
    this.closeButton,
    this.animations,
    this.browser,
    this.partial,
  });

  ColorSchemes? colorSchemes;

  bool? urlBarHidingEnabled;

  int? shareState;

  bool? showTitle;

  bool? instantAppsEnabled;

  CloseButton? closeButton;

  Animations? animations;

  BrowserConfiguration? browser;

  PartialConfiguration? partial;

  Object encode() {
    return <Object?>[
      colorSchemes?.encode(),
      urlBarHidingEnabled,
      shareState,
      showTitle,
      instantAppsEnabled,
      closeButton?.encode(),
      animations?.encode(),
      browser?.encode(),
      partial?.encode(),
    ];
  }

  static CustomTabsIntentOptions decode(Object result) {
    result as List<Object?>;
    return CustomTabsIntentOptions(
      colorSchemes: result[0] != null
          ? ColorSchemes.decode(result[0]! as List<Object?>)
          : null,
      urlBarHidingEnabled: result[1] as bool?,
      shareState: result[2] as int?,
      showTitle: result[3] as bool?,
      instantAppsEnabled: result[4] as bool?,
      closeButton: result[5] != null
          ? CloseButton.decode(result[5]! as List<Object?>)
          : null,
      animations: result[6] != null
          ? Animations.decode(result[6]! as List<Object?>)
          : null,
      browser: result[7] != null
          ? BrowserConfiguration.decode(result[7]! as List<Object?>)
          : null,
      partial: result[8] != null
          ? PartialConfiguration.decode(result[8]! as List<Object?>)
          : null,
    );
  }
}

class Animations {
  Animations({
    this.startEnter,
    this.startExit,
    this.endEnter,
    this.endExit,
  });

  String? startEnter;

  String? startExit;

  String? endEnter;

  String? endExit;

  Object encode() {
    return <Object?>[
      startEnter,
      startExit,
      endEnter,
      endExit,
    ];
  }

  static Animations decode(Object result) {
    result as List<Object?>;
    return Animations(
      startEnter: result[0] as String?,
      startExit: result[1] as String?,
      endEnter: result[2] as String?,
      endExit: result[3] as String?,
    );
  }
}

class BrowserConfiguration {
  BrowserConfiguration({
    required this.prefersExternalBrowser,
    this.prefersDefaultBrowser,
    this.fallbackCustomTabs,
    this.headers,
  });

  bool prefersExternalBrowser;

  bool? prefersDefaultBrowser;

  List<String?>? fallbackCustomTabs;

  Map<String?, String?>? headers;

  Object encode() {
    return <Object?>[
      prefersExternalBrowser,
      prefersDefaultBrowser,
      fallbackCustomTabs,
      headers,
    ];
  }

  static BrowserConfiguration decode(Object result) {
    result as List<Object?>;
    return BrowserConfiguration(
      prefersExternalBrowser: result[0]! as bool,
      prefersDefaultBrowser: result[1] as bool?,
      fallbackCustomTabs: (result[2] as List<Object?>?)?.cast<String?>(),
      headers: (result[3] as Map<Object?, Object?>?)?.cast<String?, String?>(),
    );
  }
}

class CloseButton {
  CloseButton({
    this.icon,
    this.position,
  });

  String? icon;

  int? position;

  Object encode() {
    return <Object?>[
      icon,
      position,
    ];
  }

  static CloseButton decode(Object result) {
    result as List<Object?>;
    return CloseButton(
      icon: result[0] as String?,
      position: result[1] as int?,
    );
  }
}

class ColorSchemes {
  ColorSchemes({
    this.colorScheme,
    this.lightParams,
    this.darkParams,
    this.defaultPrams,
  });

  int? colorScheme;

  ColorSchemeParams? lightParams;

  ColorSchemeParams? darkParams;

  ColorSchemeParams? defaultPrams;

  Object encode() {
    return <Object?>[
      colorScheme,
      lightParams?.encode(),
      darkParams?.encode(),
      defaultPrams?.encode(),
    ];
  }

  static ColorSchemes decode(Object result) {
    result as List<Object?>;
    return ColorSchemes(
      colorScheme: result[0] as int?,
      lightParams: result[1] != null
          ? ColorSchemeParams.decode(result[1]! as List<Object?>)
          : null,
      darkParams: result[2] != null
          ? ColorSchemeParams.decode(result[2]! as List<Object?>)
          : null,
      defaultPrams: result[3] != null
          ? ColorSchemeParams.decode(result[3]! as List<Object?>)
          : null,
    );
  }
}

class ColorSchemeParams {
  ColorSchemeParams({
    this.toolbarColor,
    this.navigationBarColor,
    this.navigationBarDividerColor,
  });

  int? toolbarColor;

  int? navigationBarColor;

  int? navigationBarDividerColor;

  Object encode() {
    return <Object?>[
      toolbarColor,
      navigationBarColor,
      navigationBarDividerColor,
    ];
  }

  static ColorSchemeParams decode(Object result) {
    result as List<Object?>;
    return ColorSchemeParams(
      toolbarColor: result[0] as int?,
      navigationBarColor: result[1] as int?,
      navigationBarDividerColor: result[2] as int?,
    );
  }
}

class PartialConfiguration {
  PartialConfiguration({
    required this.initialHeight,
    required this.activityHeightResizeBehavior,
    this.cornerRadius,
  });

  double initialHeight;

  int activityHeightResizeBehavior;

  int? cornerRadius;

  Object encode() {
    return <Object?>[
      initialHeight,
      activityHeightResizeBehavior,
      cornerRadius,
    ];
  }

  static PartialConfiguration decode(Object result) {
    result as List<Object?>;
    return PartialConfiguration(
      initialHeight: result[0]! as double,
      activityHeightResizeBehavior: result[1]! as int,
      cornerRadius: result[2] as int?,
    );
  }
}

class _CustomTabsApiCodec extends StandardMessageCodec {
  const _CustomTabsApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is Animations) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is BrowserConfiguration) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is CloseButton) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is ColorSchemeParams) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is ColorSchemes) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is CustomTabsIntentOptions) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is PartialConfiguration) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return Animations.decode(readValue(buffer)!);
      case 129: 
        return BrowserConfiguration.decode(readValue(buffer)!);
      case 130: 
        return CloseButton.decode(readValue(buffer)!);
      case 131: 
        return ColorSchemeParams.decode(readValue(buffer)!);
      case 132: 
        return ColorSchemes.decode(readValue(buffer)!);
      case 133: 
        return CustomTabsIntentOptions.decode(readValue(buffer)!);
      case 134: 
        return PartialConfiguration.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class CustomTabsApi {
  /// Constructor for [CustomTabsApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  CustomTabsApi({BinaryMessenger? binaryMessenger})
      : __pigeon_binaryMessenger = binaryMessenger;
  final BinaryMessenger? __pigeon_binaryMessenger;

  static const MessageCodec<Object?> pigeonChannelCodec = _CustomTabsApiCodec();

  Future<void> launch(String urlString, {required bool prefersDeepLink, CustomTabsIntentOptions? options,}) async {
    const String __pigeon_channelName = 'dev.flutter.pigeon.flutter_custom_tabs_android.CustomTabsApi.launch';
    final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[urlString, prefersDeepLink, options]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> closeAllIfPossible() async {
    const String __pigeon_channelName = 'dev.flutter.pigeon.flutter_custom_tabs_android.CustomTabsApi.closeAllIfPossible';
    final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(null) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }
}
