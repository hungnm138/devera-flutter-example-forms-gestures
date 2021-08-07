import 'package:flutter/material.dart';

import 'game_score.dart';
import 'number_box.dart';
import 'snack_message.dart';
import 'package:provider/provider.dart';

class OddContainer extends StatelessWidget with SnackMessage {
  const OddContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.lightGreen,
        ),
        child: DragTarget<int>(
          onAccept: (data) => _onAccept(context, data),
          onWillAccept: _willAccept,
          builder: (context, _, __) {
            return const Rectangle(text: "Odd");
          },
        ));
  }

  void _onAccept(BuildContext context, int data) {
    context.read<GameScore>().addPoints(data);
    showMessage(context, "Points: + $data");
  }

  bool _willAccept(int? data) => data != null && data % 2 != 0;
}
