import '../exports.dart';

class LoaderWithAppIcon extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final Widget appIcon;
  final double appIconSize;
  final double borderRadius;
  final double overlayOpacity;
  final Color? overlayBackgroundColor;
  final Color? circularProgressColor;

  const LoaderWithAppIcon(
      {super.key,
      required this.isLoading,
      required this.child,
      required this.appIcon,
      this.appIconSize = 50,
      this.borderRadius = 15,
      this.overlayOpacity = 0.5,
      this.circularProgressColor,
      this.overlayBackgroundColor});
  @override
  Widget build(BuildContext context) {
    return OverLayAnimation(
      isLoading: isLoading,
      opacity: overlayOpacity,
      color: overlayBackgroundColor ?? Theme.of(context).colorScheme.surface,
      progressIndicator: Material(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: CircularProgressIndicator(
                  color: circularProgressColor ?? Colors.purple,
                  // minHeight: 01,
                  // minHeight: 0.5.h,
                  strokeWidth: 2,
                ),
              ),
              SizedBox(
                width: appIconSize,
                height: appIconSize,
                child: appIcon,
              ),
            ],
          ),
        ),
      ),
      child: child,
    );
  }
}

class OverLayAnimation extends StatefulWidget {
  final bool isLoading;
  final double opacity;
  final Color? color;
  final Widget progressIndicator;
  final Widget child;

  const OverLayAnimation({
    super.key,
    required this.isLoading,
    required this.child,
    this.opacity = 0.5,
    this.progressIndicator = const CircularProgressIndicator(),
    this.color,
  });

  @override
  State<OverLayAnimation> createState() => _OverLayAnimationState();
}

class _OverLayAnimationState extends State<OverLayAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool? _overlayVisible;

  _OverLayAnimationState();

  @override
  void initState() {
    super.initState();
    _overlayVisible = false;
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation.addStatusListener((status) {
      status == AnimationStatus.forward
          ? setState(() {
              _overlayVisible = true;
            })
          : null;
      status == AnimationStatus.dismissed
          ? setState(() {
              _overlayVisible = false;
            })
          : null;
    });
    if (widget.isLoading) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(OverLayAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!oldWidget.isLoading && widget.isLoading) {
      _controller.forward();
    }

    if (oldWidget.isLoading && !widget.isLoading) {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[];
    widgets.add(widget.child);

    if (_overlayVisible == true) {
      final modal = FadeTransition(
        opacity: _animation,
        child: Stack(
          children: <Widget>[
            Opacity(
              opacity: widget.opacity,
              child: ModalBarrier(
                dismissible: false,
                color: widget.color ?? Theme.of(context).colorScheme.surface,
              ),
            ),
            Center(child: widget.progressIndicator),
          ],
        ),
      );
      widgets.add(modal);
    }

    return Stack(children: widgets);
  }
}
