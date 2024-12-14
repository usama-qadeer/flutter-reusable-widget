// Reference size from Figma design
import '../exports.dart';

const double figmaWidth = 375.0; // Width used in Figma (design base width)
const double figmaHeight = 812.0; // Height used in Figma (design base height)

// Extension on BuildContext for responsive design
extension ResponsiveExtension on BuildContext {
  // Get the screen width and height
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  // Scale width based on Figma width
  double get scaledWidth => screenWidth / figmaWidth;

  // Scale height based on Figma height
  double get scaledHeight => screenHeight / figmaHeight;

  // Scale font size based on the screen width
  double get scaledFontSize {
    double scaleFactor = screenWidth / figmaWidth;
    return scaleFactor * 16; // Assuming 16 is the base font size in Figma
  }

  // Scale height padding based on Figma design height
  double scaledPaddingHeight(double padding) {
    return padding * scaledHeight;
  }

  // Scale width padding based on Figma design width
  double scaledPaddingWidth(double padding) {
    return padding * scaledWidth;
  }

  // Scaled symmetric padding (both horizontal and vertical)
  EdgeInsets scaledPadding(double padding) {
    return EdgeInsets.symmetric(
      vertical: scaledPaddingHeight(padding),
      horizontal: scaledPaddingWidth(padding),
    );
  }

  // Scaled margin (for all sides)
  EdgeInsets scaledMargin(double margin) {
    return EdgeInsets.all(margin *
        scaledWidth); // You can use scaledHeight for vertical margin if needed
  }

  // Scaled symmetric margin
  EdgeInsets scaledSymmetricMargin(double vertical, double horizontal) {
    return EdgeInsets.symmetric(
      vertical: vertical * scaledHeight,
      horizontal: horizontal * scaledWidth,
    );
  }
}
