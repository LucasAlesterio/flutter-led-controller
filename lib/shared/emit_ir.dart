import 'package:flutter/material.dart';
import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';

Future<void> checkIrEmitter(BuildContext context) async {
  final bool hasIrEmitter = await IrSensorPlugin.hasIrEmitter;
  if (!hasIrEmitter) {
    // ignore: use_build_context_synchronously
    await showDialog(
      context: context,
      builder: (_) =>
          const Text("The device does not have an infrared sensor!"),
    );
  }
}

List<int> hexToNECPattern(String hexCode) {
  const int pulse = 560;
  List<int> pattern = [];
  pattern.add(9000);
  pattern.add(4500);
  final binCode =
      BigInt.parse(hexCode, radix: 16).toRadixString(2).padLeft(32, '0');

  for (var bit in binCode.split('')) {
    pattern.add(pulse);
    if (bit == '0') {
      pattern.add(pulse);
    } else {
      pattern.add(1690);
    }
  }
  pattern.add(pulse);
  pattern.add(40000 - pulse);
  return pattern;
}

void transmit(String hex) async {
  await IrSensorPlugin.transmitListInt(list: hexToNECPattern(hex));
}
