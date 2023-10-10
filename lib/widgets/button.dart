import 'package:flutter/material.dart';
import 'package:remote_led_strip/shared/emit_ir.dart';

class Button extends StatefulWidget {
  final String command;
  final Widget? child;
  final Color color;
  const Button({
    super.key,
    required this.command,
    this.child,
    this.color = Colors.white,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(widget.color),
      ),
      onPressed: () => transmit(widget.command),
      child: widget.child,
    );
  }
}
