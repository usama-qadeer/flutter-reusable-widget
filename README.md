---

# Flutter Reusable Widgets

A collection of **reusable Flutter widgets** designed to enhance productivity and maintain a consistent UI in Flutter applications. This repository includes a **Reusable Button**, **Reusable TextField**, and **Reusable Dialog**.

## Widgets Included

### 1. **Reusable Button**
A highly customizable button widget for various use cases.

### 2. **Reusable TextField**
An enhanced text field widget with support for styling and additional features.

### 3. **Reusable Dialog**
A versatile dialog widget to display modals with customizable buttons and styles.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/usama-qadeer/flutter-reusable-widget.git
   ```
2. Add the required widget files to your project.
3. Import the desired widget:
   ```dart
   import 'package:your_project_name/widgets/reusable_button.dart';
   import 'package:your_project_name/widgets/reusable_textformfield.dart';
   import 'package:your_project_name/widgets/reusable_dialog.dart';
   ```

## Usage Example

Here’s a complete example demonstrating the usage of the **Reusable Button**, **Reusable TextField**, and **Reusable Dialog**:

```dart
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
);

ReuseableTextFormField(
  controller: controller,
  label: "",
);
```

### Explanation
- **Reusable Button** (`ReuseableBtn`):
  - `onTap`: Callback function when the button is pressed.
  - `label`: The text displayed on the button.
  - Other customizable properties include background color, width, elevation, border radius, splash color, and icon.

- **Reusable Dialog** (`ReuseableDialog.show`):
  - `title`: Title of the dialog.
  - `content`: Main content/message of the dialog.
  - `buttons`: A list of `ReuseableDialogButton` widgets for actions.

- **Reusable TextField** (`ReuseableTextFormField`):
  - `controller`: Manages the input text.
  - `label`: Displays a label for the text field.

## Contributions
We welcome contributions! If you have ideas or improvements, feel free to open an issue or submit a pull request.

## License
This project is licensed under the [MIT License](LICENSE).

---

This structure aligns with your provided example and makes it clear for anyone who views the repository how to use the widgets effectively.
