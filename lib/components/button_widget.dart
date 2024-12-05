import '../exports.dart';

class ReuseableBtn extends StatelessWidget {
  const ReuseableBtn(
      {required this.label,
      this.onTap,
      this.bg,
      this.fg,
      this.splashColor,
      this.icon,
      this.width,
      this.buttonBorderRadius,
      this.mainAxisAlignment,
      this.insidePadding,
      this.isDisable = false,
      super.key,
      this.shadowColor,
      this.elevation});
  final String label;
  final IconData? icon;
  final Color? fg;

  /// Default is `KTheme.appBg`
  final Color? bg;
  final Color? splashColor;

  final Color? shadowColor;

  /// Default is `8.0`
  final double? insidePadding;
  final double? elevation;

  /// Default is `double.infinity`
  final double? width;
  final double? buttonBorderRadius;
  final VoidCallback? onTap;

  /// Default is `spaceBetween`.
  final MainAxisAlignment? mainAxisAlignment;

  /// Default is `false`.
  final bool? isDisable;

  @override
  Widget build(BuildContext context) {
    final BorderRadius btnborderRadius =
        BorderRadius.circular(buttonBorderRadius ?? 10.0);
    return BounceWidget(
      duration: const Duration(milliseconds: 100),
      onPressed: () {},
      child: Card(
        shadowColor: shadowColor,
        elevation: elevation,
        child: SizedBox(
          width: width ?? double.infinity,
          child: Material(
            shape: RoundedRectangleBorder(
              borderRadius: btnborderRadius,
            ),
            color: isDisable!
                ? ReuseableTheme.disableBg
                : bg ?? ReuseableTheme.buttonBg,
            child: InkWell(
              borderRadius: btnborderRadius,
              splashColor: splashColor ?? ReuseableTheme.splashColor,
              onTap: onTap ?? () {},
              child: Padding(
                padding: EdgeInsets.all(insidePadding ?? 8.0),
                child: Row(
                  mainAxisAlignment:
                      mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      label,
                      style: ReuseableTheme.titleTextStyle(
                        textColor: isDisable! ? ReuseableTheme.disableFg : null,
                      ),
                    ),
                    if (icon != null)
                      Icon(
                        icon,
                        color: isDisable!
                            ? ReuseableTheme.disableFg
                            : fg ?? ReuseableTheme.buttonFg,
                      )
                    else
                      Container(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
