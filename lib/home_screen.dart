import 'package:resuseable_widgets/components/app_icon_loader.dart';

import '../exports.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoaderWithAppIcon(
        appIcon: const FlutterLogo(), // replace with your asset image
        isLoading: false, // set true to show loader
        appIconSize: 50, // size of asset image
        overlayBackgroundColor: Colors.grey.shade300, // color of loader
        overlayOpacity: .4, // opacity of loader
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
        )),
      ),
    );
  }
}
