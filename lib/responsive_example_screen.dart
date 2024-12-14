// ignore_for_file: prefer_const_constructors

import 'exports.dart';

class ResponsiveExample extends StatelessWidget {
  const ResponsiveExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Responsive Example")),
      body: Padding(
        padding: context.scaledPadding(16), // Apply responsive padding
        child: Column(
          children: [
            Container(
              width: context.scaledWidth * 200, // Scale width of a container
              height: context.scaledHeight * 100, // Scale height of a container
              color: Colors.blue,
              child: Center(
                  child: Text("Scaled Box",
                      style: TextStyle(fontSize: context.scaledFontSize))),
            ),
            SizedBox(
                height: context.scaledHeight * 20), // Scaled vertical spacing
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding:
                    context.scaledPadding(12), // Scaled padding for the button
                child: Text("Responsive Button",
                    style: TextStyle(fontSize: context.scaledFontSize)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
