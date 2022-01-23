# Deep Links & Web URLs

## Types of deep links

There are three types of deep links:

* **URI schemes**: An app’s own URI scheme. fooderlich://raywenderlich.com/home is an example of Fooderlich’s URI scheme. This form of deep link only works if the user has installed your app.
* **iOS Universal Links**: In the root of your web domain, you place a file that points to a specific app ID to know whether to open your app or to direct the user to the App Store. You must register that specific app ID with Apple to handle links from that domain.
* **Android App Links**: These are like iOS Universal Links, but for the Android platform. Android App Links take users to a link’s specific content directly in your app. They leverage HTTP URLs and are associated with a website. For users that don’t have your app installed, these links will go directly to the content of your website.

In this chapter, you’ll only look at URI Schemes. For more information on how to set up iOS Universal Links and Android App Links, check out the following:

**iOS Universal Links**: [https://www.raywenderlich.com/6080-universal-links-make-the-connection](https://www.raywenderlich.com/6080-universal-links-make-the-connection).
**Android App Links**: [https://www.raywenderlich.com/18330247-deep-links-in-android-getting-started](https://www.raywenderlich.com/18330247-deep-links-in-android-getting-started).

## Setting up deep links

To enable deep linking on iOS and Android, you have to add some metadata tags in the respective platforms.

### Setting up deep links on iOS

Open **ios/Runner/Info.plist**. You’ll see some new key-value pairs, which enable deep linking for iOS:

``` .plist
<key>FlutterDeepLinkingEnabled</key>
<true/>
<key>CFBundleURLTypes</key>
<array>
  <dict>
  <key>CFBundleTypeRole</key>
  <string>Editor</string>
  <key>CFBundleURLName</key>
  <string>raywenderlich.com</string>
  <key>CFBundleURLSchemes</key>
  <array>
  <string>fooderlich</string>
  </array>
  </dict>
</array>
```

`CFBundleURLName` is a unique URL that distinguishes your app from others that use the same scheme. `fooderlich` is the name of the URL scheme you’ll use later.

### Setting up deep links on Android

Open **android/app/src/main/AndroidManifest.xml**. Here you’ll also find two new definitions in the `<data>` tag:

``` xml
<!-- Deep linking -->
<meta-data android:name="flutter_deeplinking_enabled" android:value="true" />
<intent-filter>
<action android:name="android.intent.action.VIEW" />
<category android:name="android.intent.category.DEFAULT" />
<category android:name="android.intent.category.BROWSABLE" />
<data
  android:scheme="fooderlich"
  android:host="raywenderlich.com" />
</intent-filter>
```

Like iOS, you set the same values for `scheme` and `host`.

When you create a deep link for Fooderlich, the custom URL scheme looks like this:
`fooderlich://raywenderlich.com/<path>`

## Recapping Navigator 2.0

In the last chapter, you learned how to set up four components: **RouterDelegate**, **Router**, **Navigator** and **BackButtonDispatcher**.

![Navigator 2.0](./assets/Navigator%202.0%20(1).png)

* `RouterDelegate`’s responsibilities include:
  * Using **App State** to build and configure the list of pages.
  * Retrieving and setting up the initial route when the app first launches.
  * Listening for new intents when you show a new route.
  * Listening to requests by the operating system to pop a route, via. `BackButtonDispatcher`.
* **Router** is a widget that extends `RouterDelegate`. The router ensures that the messages are passed to `RouterDelegate`.
* **Navigator** defines a stack of `MaterialPages` in a declarative way. It also handles any `onPopPage` events.
* **BackButtonDispatcher** handles platform-specific system back button presses. It listens to requests by the OS and notifies the router delegate to pop a route.

The next two components you’ll look at are **RouteInformationProvider** and **RouteInformationParser**.

![Navigator 2.0](./assets/Navigator%202.0%20(2).png)

* **RouteInformationProvider**: Provides the route information to the router. It informs the router about the initial route and notifies the router of new intents. You don’t have to create this class, the default implementation is usually all you need.
* **RouteInformationParser**: Gets the route string from `RouteInformationProvider`, then parses the URL string to a generic user-defined data type. This data type is a navigation configuration.

## Deep links under the hood

For deep links to work, you need to do two key things: convert a URL to an app state and convert an app state to a URL. Next, you’ll see both in detail.

### Converting a URL to an app state

The first part of supporting deep links is to figure out which state of the app corresponds to a specific URL. Here’s how the conversion happens:

1. The user enters a new URL triggered by a deep link or by changing the URL in the web browser’s address bar.
2. Within `RouteInformationParser`, `parseRouteInformation()` converts the URL string into a user-defined data type. This is called the **navigation state**. This data type includes the path and the query parameters. You’ll build this soon.
3. The router then calls `setNewRoutePath()`, which converts your navigation state into an app state. It will then use the current app state to configure the navigator stack.

### Converting the app state to a URL string

When the user taps a button or the app state changes, you need to change the current URL. Here’s what happens when you set up your app to handle URLs:

1. The router calls `routerDelegate`’s `notifyListeners()` to let Flutter know that it needs to update the current URL.
2. It uses `currentConfiguration()` to convert your app state back to a navigation state.
3. `restoreRouteInformation()` then converts your navigation state into a URL string. On a Flutter web app, this updates the URL bar’s address.

**Note**: As you recall, navigation state is just a user-defined data type. It converts a URL string into a proper data type. This object holds information about your navigation, including:

* The URL path or location.
* The query parameters.

In the next section, AppLink is the data type that encapsulates the URL string.