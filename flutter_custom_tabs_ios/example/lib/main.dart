import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs_platform_interface/flutter_custom_tabs_platform_interface.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom Tabs Example',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Example for iOS'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () => _launchURL(context),
                  child: const Text(
                    'Show flutter.dev',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => _launchURLInBottomSheet(context),
                  child: const Text(
                    'Show flutter.dev(bottom Sheet)',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => _launchDeepLinkURL(context),
                  child: const Text(
                    'Show Apple Maps(deep linking)',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(BuildContext context) async {
    final theme = Theme.of(context);
    try {
      await CustomTabsPlatform.instance.launch(
        'https://flutter.dev',
        customTabsOptions: CustomTabsOptions(
          colorSchemes: CustomTabsColorSchemes.defaults(
            toolbarColor: theme.colorScheme.surface,
            navigationBarColor: theme.colorScheme.background,
          ),
          shareState: CustomTabsShareState.on,
          urlBarHidingEnabled: true,
          showTitle: true,
        ),
        safariVCOptions: SafariViewControllerOptions(
          preferredBarTintColor: theme.colorScheme.surface,
          preferredControlTintColor: theme.colorScheme.onSurface,
          barCollapsingEnabled: true,
          entersReaderIfAvailable: false,
          dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        ),
      );
    } catch (e) {
      // An exception is thrown if browser app is not installed on Android device.
      debugPrint(e.toString());
    }
  }

  Future<void> _launchURLInBottomSheet(BuildContext context) async {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    try {
      await CustomTabsPlatform.instance.launch(
        'https://flutter.dev',
        customTabsOptions: CustomTabsOptions.partial(
          configuration: PartialCustomTabsConfiguration(
            initialHeight: mediaQuery.size.height * 0.7,
          ),
          colorSchemes: CustomTabsColorSchemes.defaults(
            toolbarColor: theme.primaryColor,
          ),
          showTitle: true,
        ),
        safariVCOptions: SafariViewControllerOptions.pageSheet(
          configuration: const SheetPresentationControllerConfiguration(
            detents: {
              SheetPresentationControllerDetent.large,
              SheetPresentationControllerDetent.medium,
            },
            largestUndimmedDetentIdentifier:
                SheetPresentationControllerDetent.medium,
            prefersScrollingExpandsWhenScrolledToEdge: false,
            prefersGrabberVisible: true,
            prefersEdgeAttachedInCompactHeight: true,
            preferredCornerRadius: 16.0,
          ),
          preferredBarTintColor: theme.primaryColor,
          preferredControlTintColor: Colors.white,
          entersReaderIfAvailable: true,
          dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        ),
      );
    } catch (e) {
      // An exception is thrown if browser app is not installed on Android device.
      debugPrint(e.toString());
    }
  }

  Future<void> _launchDeepLinkURL(BuildContext context) async {
    final theme = Theme.of(context);
    try {
      await CustomTabsPlatform.instance.launch(
        'https://maps.apple.com/?q=tokyo+station',
        prefersDeepLink: true,
        customTabsOptions: CustomTabsOptions(
          colorSchemes: CustomTabsColorSchemes.defaults(
            toolbarColor: theme.colorScheme.surface,
            navigationBarColor: theme.colorScheme.background,
          ),
          shareState: CustomTabsShareState.on,
          urlBarHidingEnabled: true,
          showTitle: true,
        ),
        safariVCOptions: SafariViewControllerOptions(
          preferredBarTintColor: theme.colorScheme.surface,
          preferredControlTintColor: theme.colorScheme.onSurface,
          barCollapsingEnabled: true,
          entersReaderIfAvailable: false,
          dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        ),
      );
    } catch (e) {
      // An exception is thrown if browser app is not installed on Android device.
      debugPrint(e.toString());
    }
  }
}
