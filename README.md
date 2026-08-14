# RoboLeague iOS

Native SwiftUI companion for the **Virtual Robot Football League**. RoboLeague combines a polished dark, green-and-gold native experience with the live web league at [roboleague.live](https://roboleague.live).

## Requirements
- Xcode 15 or newer
- iOS 16.0 or newer

## Run locally
1. Open `RoboLeague.xcodeproj` in Xcode.
2. Select the **RoboLeague** scheme and an iOS 16+ simulator or device.
3. Build and run (`⌘R`).

The app bundle identifier is `com.vrfl.roboleague`. Configure signing with your Apple Developer team before device distribution or App Store submission.

## Features
- Home hero with live and membership calls to action
- League WebKit experience
- Participant and Team Owner pricing
- Native about page

## CI
`codemagic.yaml` builds the project and publishes an IPA to TestFlight after App Store Connect credentials and the app ID are configured in Codemagic.
