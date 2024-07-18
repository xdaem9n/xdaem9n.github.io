import 'package:flutter/material.dart';

class HoverUnderlineButton extends StatefulWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;

  const HoverUnderlineButton({
    required this.label,
    required this.color,
    required this.onPressed,
    super.key,
  });

  @override
  _HoverUnderlineButtonState createState() => _HoverUnderlineButtonState();
}

class _HoverUnderlineButtonState extends State<HoverUnderlineButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovering = false;
        });
      },
      child: TextButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.label,
          style: TextStyle(
            color: widget.color,
            decoration: _isHovering ? TextDecoration.underline : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}