# Tasbih

Tasbih Counter is a simple Flutter app that allows users to count their tasbih (prayer beads) conveniently. The app features an easy-to-use interface and operates exclusively in dark mode.
A new Flutter project.

## Features
- **`Counter Functionality`**: Easily increment the counter.
- **`Reset Counter`**: Reset the counter to start a new counting session.
- **`Persistent Data`**: The counter state is saved even if the app is closed, allowing users to continue their count later.

## Screenshots
<div style="display: flex; justify-content: space-between;">
  <img src="https://github.com/user-attachments/assets/1ef5be20-1733-4e78-9379-850499256a9f" alt="Screenshot 1" style="width: 26%;"/>
  <img src="https://github.com/user-attachments/assets/b6a9687f-719e-4591-a5e9-d1a357beb335" alt="Screenshot 2" style="width: 26%;"/>

</div>


## Installation

To get started with Tasbih, follow these steps:

**`Step 1:`** Clone the Repository
First, you'll need to clone the repository from GitHub. Open your terminal and run the following command:
```
https://github.com/MAHMOUDELSAYED7/Tasbih.git
```
Replace <repository-url> with the actual URL of your repository if it was changed.

**`Step 2:`** Install Dependencies
After navigating to the project directory, you need to install all the necessary dependencies. Run:
```
flutter pub get
```
This command fetches all the dependencies listed in the `pubspec.yaml` file.

**`Step 3:`** Configure the App
Ensure all necessary configurations are done. This includes adding your assets and setting up environment variables if needed. Verify that your `pubspec.yaml` file includes all required `assets` and `fonts`.

**`Step 4:`** Run the Application
Finally, run the application on your desired device using the following command:
`
```
flutter run
```
This command compiles your Flutter app and deploys it to the connected device or simulator.

Additional Tips
**`Updating Dependencies:`** If there are any updates to the dependencies, you can update them using:
```
flutter pub upgrade --major-versions
```
Flutter Doctor: Run flutter doctor to ensure that your development environment is set up correctly.
```
flutter doctor
```
This command checks your environment and displays a report of the status of your Flutter installation, dependencies, and connected devices.

By following these steps, you'll have the Tasbih mobile app and running on your device. If you encounter any issues during installation, please refer to the Flutter documentation.

## Dependencies
This project uses the following dependencies:

- **`bloc`**: State management library for Flutter apps.
- **`cupertino_icons`**: Icon set for iOS-styled Flutter apps.
- **`flutter`**: Flutter SDK for building cross-platform apps.
- **`flutter_bloc`**: Cubit and BLoC state management for Flutter.
- **`flutter_screenutil`**: Responsive UI design and adaptation for Flutter.
- **`shared_preferences`**: Persistent local storage for key-value pairs.
- **`url_launcher`**: Launch URLs from Flutter applications.

## Dev Dependencies
- **`flutter_launcher_icons`**: Generate launcher icons for Flutter apps.
- **`flutter_lints`**: Official Dart code linter rules for Flutter.
- **`flutter_test`**: Testing framework and utilities for Flutter apps.


## Usage

1. **`Increment Counter`**: Tap the increment button to increase the counter.
1. **`Reset Counter`**: Tap the reset button to reset the counter to zero.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or feedback, please reach out via email: [mahmoudelsayed.dev@gmail.com](mahmoudelsayed.dev@gmail.com)
