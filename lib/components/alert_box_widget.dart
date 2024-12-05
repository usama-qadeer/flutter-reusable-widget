import '../exports.dart';

/// Reusable Custom Dialog
abstract class ReuseableDialog {
  static Future<void> show(
    BuildContext context, {
    required String title,
    required String content,
    List<ReuseableDialogButton>? buttons,
  }) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            if (buttons != null)
              for (final button in buttons)
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    button.onPressed?.call();
                  },
                  child: Text(button.text),
                ),
          ],
        );
      },
    );
  }
}

class ReuseableDialogButton {
  final String text;
  final VoidCallback? onPressed;

  ReuseableDialogButton({required this.text, this.onPressed});
}
