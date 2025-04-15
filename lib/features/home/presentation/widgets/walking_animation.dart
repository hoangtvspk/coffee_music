import 'package:flutter/material.dart';

class WalkingAnimation extends StatefulWidget {
  final double characterWidth;
  final double characterHeight;

  const WalkingAnimation({
    super.key,
    this.characterWidth = 50,
    this.characterHeight = 50,
  });

  @override
  State<WalkingAnimation> createState() => _WalkingAnimationState();
}

class _WalkingAnimationState extends State<WalkingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _positionAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reset();
        _controller.forward();
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:
          widget.characterWidth * 4, // Container width to constrain animation
      height: widget.characterHeight,
      child: LayoutBuilder(
        builder: (context, constraints) {
          _positionAnimation = Tween<double>(
            begin: 0,
            end: constraints.maxWidth - widget.characterWidth,
          ).animate(CurvedAnimation(
            parent: _controller,
            curve: Curves.linear,
          ));

          return AnimatedBuilder(
            animation: _positionAnimation,
            builder: (context, child) {
              return Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: _positionAnimation.value,
                    child: SizedBox(
                      width: widget.characterWidth,
                      height: widget.characterHeight,
                      child: Image.network(
                        // 'https://i.gifer.com/4SHX.gif',
                        'https://i.gifer.com/XOsX.gif',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
