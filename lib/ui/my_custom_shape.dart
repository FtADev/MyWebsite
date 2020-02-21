import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class MyCustomShape extends StatelessWidget {
  final tween = MultiTrackTween([
    Track("color1").add(Duration(seconds: 3),
        ColorTween(begin: Color(0xffD38312), end: Colors.lightBlue.shade900)),
    Track("color2").add(Duration(seconds: 3),
        ColorTween(begin: Color(0xffA83279), end: Colors.blue.shade600))
  ]);

  @override
  Widget build(BuildContext context) {
    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, animation) {
        return Container(
          child: CustomPaint(
            painter: CurvePainter(animation["color1"], animation["color2"]),
          ),
        );
      },
    );
  }
}

class CurvePainter extends CustomPainter {
  final color1;
  final color2;

  CurvePainter(this.color1, this.color2);

  Node a = Node(0.29, 0.89);
  Node b = Node(0.17, 0.82);
  Node c = Node(0.12, 0.59);
  Node d = Node(0.09, 0.44);
  Node e = Node(0.15, 0.32);
  Node f = Node(0.15, 0.25);
  Node g = Node(0.3, 0.13);
  Node h = Node(0.45, 0.12);
  Node i = Node(0.52, 0.18);
  Node j = Node(0.61, 0.22);
  Node k = Node(0.79, 0.18);
  Node l = Node(0.88, 0.27);
  Node m = Node(0.89, 0.46);
  Node n = Node(0.86, 0.56);
  Node o = Node(0.91, 0.73);
  Node p = Node(0.81, 0.85);
  Node q = Node(0.59, 0.93);
  Node r = Node(0.48, 0.9);

  Node A = Node(0.135, 0.97);
  Node B = Node(0.2, 0.66);
  Node C = Node(0, 0.5);
  Node D = Node(0.18, 0.38);
  Node E = Node(0.11, 0.24);
  Node F = Node(0.19, 0.26);
  Node G = Node(0.42, 0);
  Node H = Node(0.47, 0.2);
  Node I = Node(0.58, 0.14);
  Node J = Node(0.63, 0.26);
  Node K = Node(0.95, 0.12);
  Node L = Node(0.82, 0.39);
  Node M = Node(0.91, 0.48);
  Node N = Node(0.82, 0.62);
  Node O = Node(1, 0.85);
  Node P = Node(0.65, 0.86);
  Node Q = Node(0.53, 1);
  Node R = Node(0.43, 0.81);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    var gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [color1, color2],
    );

    var rect = Offset.zero & size;

    paint.color = color1;
    paint.shader = gradient.createShader(rect);

    path.moveTo(size.width * a.w, size.height * a.h);

    path.quadraticBezierTo(size.width * A.w, size.height * A.h,
        size.width * b.w, size.height * b.h);

    path.quadraticBezierTo(size.width * B.w, size.height * B.h,
        size.width * c.w, size.height * c.h);

    path.quadraticBezierTo(size.width * C.w, size.height * C.h,
        size.width * d.w, size.height * d.h);

    path.quadraticBezierTo(size.width * D.w, size.height * D.h,
        size.width * e.w, size.height * e.h);

    path.quadraticBezierTo(size.width * E.w, size.height * E.h,
        size.width * f.w, size.height * f.h);

    path.quadraticBezierTo(size.width * F.w, size.height * F.h,
        size.width * g.w, size.height * g.h);

    path.quadraticBezierTo(size.width * G.w, size.height * G.h,
        size.width * h.w, size.height * h.h);

    path.quadraticBezierTo(size.width * H.w, size.height * H.h,
        size.width * i.w, size.height * i.h);

    path.quadraticBezierTo(size.width * I.w, size.height * I.h,
        size.width * j.w, size.height * j.h);

    path.quadraticBezierTo(size.width * J.w, size.height * J.h,
        size.width * k.w, size.height * k.h);

    path.quadraticBezierTo(size.width * K.w, size.height * K.h,
        size.width * l.w, size.height * l.h);

    path.quadraticBezierTo(size.width * L.w, size.height * L.h,
        size.width * m.w, size.height * m.h);

    path.quadraticBezierTo(size.width * M.w, size.height * M.h,
        size.width * n.w, size.height * n.h);

    path.quadraticBezierTo(size.width * N.w, size.height * N.h,
        size.width * o.w, size.height * o.h);

    path.quadraticBezierTo(size.width * O.w, size.height * O.h,
        size.width * p.w, size.height * p.h);

    path.quadraticBezierTo(size.width * P.w, size.height * P.h,
        size.width * q.w, size.height * q.h);

    path.quadraticBezierTo(size.width * Q.w, size.height * Q.h,
        size.width * r.w, size.height * r.h);

    path.quadraticBezierTo(size.width * R.w, size.height * R.h,
        size.width * a.w, size.height * a.h);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Node {
  double w;
  double h;

  Node(this.w, this.h);
}
