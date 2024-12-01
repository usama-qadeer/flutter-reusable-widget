import 'package:flutter/material.dart';
import 'package:resuseable_widgets/components/alert_box_widget.dart';
import 'package:resuseable_widgets/components/button_widget.dart';
import 'package:resuseable_widgets/components/textfiel_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
      )),
    );
  }
}
