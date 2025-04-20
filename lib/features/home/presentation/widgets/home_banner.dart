import 'package:buitify_coffee/core/config/app_color.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  late Timer _timer;
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _dateTime = DateTime.now();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => setState(() => _dateTime = DateTime.now()),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/home_chill_banner.png',
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 12,
          left: 12,
          child: Container(
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(60),
            ),
            child: CustomPaint(
              painter: ClockPainter(dateTime: _dateTime),
            ),
          ),
        ),
      ],
    );
  }
}

class ClockPainter extends CustomPainter {
  final DateTime dateTime;

  ClockPainter({required this.dateTime});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);

    // Draw clock face
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    canvas.drawCircle(center, radius - 5, paint);

    // Draw hour markers
    for (int i = 0; i < 12; i++) {
      final angle = i * pi / 6 - pi / 2;
      final markerLength = i % 3 == 0 ? 10.0 : 5.0;
      final outerPoint = Offset(
        center.dx + (radius - 8) * cos(angle),
        center.dy + (radius - 8) * sin(angle),
      );
      final innerPoint = Offset(
        center.dx + (radius - 8 - markerLength) * cos(angle),
        center.dy + (radius - 8 - markerLength) * sin(angle),
      );
      canvas.drawLine(innerPoint, outerPoint, paint);
    }

    // Draw digital time
    final timeString =
        '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}';
    final textPainter = TextPainter(
      text: TextSpan(
        text: timeString,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(center.dx - textPainter.width / 2, size.height + 2),
    );

    // Hour hand
    final hourHandLength = radius * 0.5;
    final hourAngle =
        (dateTime.hour % 12 + dateTime.minute / 60) * pi / 6 - pi / 2;
    final hourHandEnd = Offset(
      center.dx + hourHandLength * cos(hourAngle),
      center.dy + hourHandLength * sin(hourAngle),
    );
    paint.strokeWidth = 2;
    canvas.drawLine(center, hourHandEnd, paint);

    // Minute hand
    final minuteHandLength = radius * 0.7;
    final minuteAngle = dateTime.minute * pi / 30 - pi / 2;
    final minuteHandEnd = Offset(
      center.dx + minuteHandLength * cos(minuteAngle),
      center.dy + minuteHandLength * sin(minuteAngle),
    );
    paint.strokeWidth = 2;
    paint.color = Colors.white;
    canvas.drawLine(center, minuteHandEnd, paint);

    // Second hand
    final secondHandLength = radius * 0.8;
    final secondAngle = dateTime.second * pi / 30 - pi / 2;
    final secondHandEnd = Offset(
      center.dx + secondHandLength * cos(secondAngle),
      center.dy + secondHandLength * sin(secondAngle),
    );
    paint.strokeWidth = 1;
    paint.color = AppColor.tertiary;
    canvas.drawLine(center, secondHandEnd, paint);

    // Center dot
    paint.color = AppColor.tertiary;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(center, 4, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
