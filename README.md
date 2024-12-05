---

# Flutter Reusable Widgets

A collection of **reusable Flutter widgets** designed to enhance productivity and maintain a consistent UI in Flutter applications. This repository includes a **Reusable Button**, **Reusable TextField**, **Reusable Dialog**, and **Loader with App Icon**.

## Widgets Included

### 1. **Reusable Button**
A highly customizable button widget for various use cases.

### 2. **Reusable TextField**
An enhanced text field widget with support for styling and additional features.

### 3. **Reusable Dialog**
A versatile dialog widget to display modals with customizable buttons and styles.

### 4. **Loader with App Icon**
A loading overlay with a centered app icon, customizable in terms of size, background color, and opacity.

## Installation

1. Add the dependency to your `pubspec.yaml` file:
   ```yaml
   dependencies:
     reusable_widgets:
       git:
         url: https://github.com/usama-qadeer/flutter_reusable_widget.git
   ```
2. Run the following command to fetch the package:
   ```bash
   flutter pub get
   ```
3. Import the required widgets into your project:
   ```dart
   import 'package:resuseable_widgets/components/app_icon_loader.dart';
   import 'package:your_project_name/widgets/reusable_button.dart';
   import 'package:your_project_name/widgets/reusable_textformfield.dart';
   import 'package:your_project_name/widgets/reusable_dialog.dart';
   ```

## Usage Example

Here’s an example demonstrating the usage of **Reusable Button**, **Reusable TextField**, **Reusable Dialog**, and **Loader with App Icon**:

```dart
import 'package:flutter/material.dart';
import 'package:resuseable_widgets/components/app_icon_loader.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoaderWithAppIcon(
        appIcon: const FlutterLogo(), // Replace with your asset image
        isLoading: true, // Set true to show loader
        appIconSize: 50, // Size of asset image
        overlayBackgroundColor: Colors.grey.shade300, // Background color of loader
        overlayOpacity: .4, // Opacity of loader
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ReuseableBtn(
                onTap: () {
                  ReuseableDialog.show(
                    context,
                    title: "title",
                    content: "content",
                    buttons: [
                      ReuseableDialogButton(
                        text: 'Cancel',
                        onPressed: () {
                          debugPrint('Cancel pressed');
                        },
                      ),
                      ReuseableDialogButton(
                        text: 'Confirm',
                        onPressed: () {
                          debugPrint('Confirm pressed');
                        },
                      ),
                    ],
                  );
                },
                label: "label",
                bg: Colors.red,
                isDisable: true,
                width: 200,
                elevation: 10,
                shadowColor: Colors.yellow,
                insidePadding: 10,
                buttonBorderRadius: 10,
                splashColor: Colors.green,
                mainAxisAlignment: MainAxisAlignment.center,
                icon: Icons.home,
                fg: Colors.black12,
              ),
              ReuseableTextFormField(
                controller: controller,
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Explanation
- **Reusable Button (`ReuseableBtn`)**:
  - `onTap`: Callback function when the button is pressed.
  - `label`: The text displayed on the button.
  - Customizable properties: background color (`bg`), width, elevation, shadow color, padding, border radius, splash color, icon, and text color (`fg`).

- **Reusable Dialog (`ReuseableDialog.show`)**:
  - `title`: Title of the dialog.
  - `content`: Main content/message of the dialog.
  - `buttons`: A list of `ReuseableDialogButton` widgets for actions.

- **Reusable TextField (`ReuseableTextFormField`)**:
  - `Controller`: Manages the input text.
  - `label`: Displays a label for the text field.

- **Loader with App Icon (`LoaderWithAppIcon`)**:
  - `appIcon`: The app icon or image displayed in the loader.
  - `isLoading`: Boolean to toggle the loader.
  - `appIconSize`: Size of the app icon.
  - `overlayBackgroundColor`: Background color of the loader overlay.
  - `overlayOpacity`: Opacity of the loader overlay.

## Contributions
We welcome contributions! If you have ideas or improvements, feel free to open an issue or submit a pull request.

## License
This project is licensed under the [MIT License](LICENSE).

--- 
