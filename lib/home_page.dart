import 'package:flutter/material.dart';
import 'package:remote_led_strip/shared/emit_ir.dart';
import 'package:remote_led_strip/shared/ir_codes_44_keys.dart';
import 'package:remote_led_strip/widgets/button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    checkIrEmitter(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 4,
          children: <Widget>[
            const Button(
              command: IrCodes44Keys.brightnessDown,
              child: Icon(Icons.brightness_low, size: 24),
            ),
            const Button(
              command: IrCodes44Keys.brightnessUp,
              child: Icon(Icons.brightness_high, size: 24),
            ),
            const Button(
              command: IrCodes44Keys.playButton,
              child: Icon(Icons.play_arrow_rounded, size: 24),
            ),
            const Button(
              command: IrCodes44Keys.power,
              color: Colors.red,
              child: Icon(
                Icons.power_settings_new,
                size: 24,
                color: Colors.white,
              ),
            ),
            //**************************************************************************** */
            const Button(
              command: IrCodes44Keys.redColor1,
              color: Colors.red,
              child: Text(
                "R",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            Button(
              command: IrCodes44Keys.greenColor1,
              color: Colors.green.shade700,
              child: const Text(
                "G",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            Button(
              command: IrCodes44Keys.blueColor1,
              color: Colors.blue.shade800,
              child: const Text(
                "B",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            const Button(
              command: IrCodes44Keys.whiteColor1,
              child: Text(
                "W",
                style: TextStyle(fontSize: 24),
              ),
            ),
            //**************************************************************************** */
            Button(
              command: IrCodes44Keys.redColor2,
              color: Colors.deepOrange.shade600,
            ),
            const Button(
              command: IrCodes44Keys.greenColor2,
              color: Colors.greenAccent,
            ),
            const Button(
              command: IrCodes44Keys.blueColor2,
              color: Colors.blue,
            ),
            Button(
              command: IrCodes44Keys.whiteColor2,
              color: Colors.pink.shade100,
            ),
            //**************************************************************************** */
            Button(
              command: IrCodes44Keys.redColor3,
              color: Colors.orange.shade700,
            ),
            const Button(
              command: IrCodes44Keys.greenColor3,
              color: Colors.cyanAccent,
            ),
            Button(
              command: IrCodes44Keys.blueColor3,
              color: Colors.deepPurpleAccent.shade400,
            ),
            const Button(
              command: IrCodes44Keys.whiteColor3,
              color: Colors.pinkAccent,
            ),
            //**************************************************************************** */
            Button(
              command: IrCodes44Keys.redColor4,
              color: Colors.orange.shade300,
            ),
            const Button(
              command: IrCodes44Keys.greenColor4,
              color: Colors.lightBlueAccent,
            ),
            const Button(
              command: IrCodes44Keys.blueColor4,
              color: Colors.purpleAccent,
            ),
            Button(
              command: IrCodes44Keys.whiteColor4,
              color: Colors.blue.shade200,
            ),
            //**************************************************************************** */
            const Button(
              command: IrCodes44Keys.redColor5,
              color: Colors.yellow,
            ),
            Button(
              command: IrCodes44Keys.greenColor5,
              color: Colors.lightBlueAccent.shade700,
            ),
            const Button(
              command: IrCodes44Keys.blueColor5,
              color: Colors.pinkAccent,
            ),
            Button(
              command: IrCodes44Keys.whiteColor5,
              color: Colors.blue.shade400,
            ),
            //**************************************************************************** */
            const Button(
              command: IrCodes44Keys.redUp,
              child: Icon(
                Icons.arrow_upward,
                size: 24,
                color: Colors.red,
              ),
            ),
            const Button(
              command: IrCodes44Keys.greenUp,
              child: Icon(
                Icons.arrow_upward,
                size: 24,
                color: Colors.green,
              ),
            ),
            const Button(
              command: IrCodes44Keys.blueUp,
              child: Icon(
                Icons.arrow_upward,
                size: 24,
                color: Colors.blue,
              ),
            ),
            const Button(
              command: IrCodes44Keys.quick,
              child: Text(
                "QUICK",
                style: TextStyle(fontSize: 8),
              ),
            ),
            //**************************************************************************** */
            const Button(
              command: IrCodes44Keys.redDn,
              child: Icon(
                Icons.arrow_downward,
                size: 24,
                color: Colors.red,
              ),
            ),
            const Button(
              command: IrCodes44Keys.greenDn,
              child: Icon(
                Icons.arrow_downward,
                size: 24,
                color: Colors.green,
              ),
            ),
            const Button(
              command: IrCodes44Keys.blueDn,
              child: Icon(
                Icons.arrow_downward,
                size: 24,
                color: Colors.blue,
              ),
            ),
            const Button(
              command: IrCodes44Keys.slow,
              child: Text(
                "SLOW",
                style: TextStyle(fontSize: 8),
              ),
            ),
            //**************************************************************************** */
            const Button(
              command: IrCodes44Keys.diy1,
              child: Text(
                "DIY1",
                style: TextStyle(fontSize: 8),
              ),
            ),
            const Button(
              command: IrCodes44Keys.diy2,
              child: Text(
                "DIY2",
                style: TextStyle(fontSize: 8),
              ),
            ),
            const Button(
              command: IrCodes44Keys.diy3,
              child: Text(
                "DIY3",
                style: TextStyle(fontSize: 8),
              ),
            ),
            const Button(
              command: IrCodes44Keys.auto,
              child: Text(
                "AUTO",
                style: TextStyle(fontSize: 8),
              ),
            ),
            //**************************************************************************** */
            const Button(
              command: IrCodes44Keys.diy4,
              child: Text(
                "DIY4",
                style: TextStyle(fontSize: 8),
              ),
            ),
            const Button(
              command: IrCodes44Keys.diy5,
              child: Text(
                "DIY5",
                style: TextStyle(fontSize: 8),
              ),
            ),
            const Button(
              command: IrCodes44Keys.diy6,
              child: Text(
                "DIY6",
                style: TextStyle(fontSize: 8),
              ),
            ),
            const Button(
              command: IrCodes44Keys.flash,
              child: Text(
                "FLASH",
                style: TextStyle(fontSize: 8),
              ),
            ),
            //**************************************************************************** */
            const Button(
              command: IrCodes44Keys.jump3,
              child: Text(
                "JUMP3",
                style: TextStyle(fontSize: 8),
              ),
            ),
            const Button(
              command: IrCodes44Keys.jump7,
              child: Text(
                "JUMP7",
                style: TextStyle(fontSize: 8),
              ),
            ),
            const Button(
              command: IrCodes44Keys.fade3,
              child: Text(
                "FADE3",
                style: TextStyle(fontSize: 8),
              ),
            ),
            const Button(
              command: IrCodes44Keys.fade7,
              child: Text(
                "FADE7",
                style: TextStyle(fontSize: 8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
