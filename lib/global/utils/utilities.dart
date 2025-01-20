import 'package:duration_button/duration_button.dart';
import 'package:flutter/material.dart';

class UtilityPart {
  static autoScheduleTask(BuildContext context,
      {Widget? child,
      required Duration taskWaitDuration,
      required void Function()? task}) {
    return DurationButton(
        width: 1,
        height: 1,
        hoverColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        coverColor: Colors.transparent,
        splashColor: Colors.transparent,
        onPressed: () {},
        duration: taskWaitDuration,
        onComplete: task,
        child: child);
  }
}
