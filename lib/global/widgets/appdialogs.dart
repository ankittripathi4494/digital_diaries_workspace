import 'package:flutter/material.dart';

class AppDialogs {
  static basicDialogExtended(BuildContext context,
      {Widget? title,
      Widget? content,
      Widget? icon,
      List<Widget>? actions,
      MainAxisAlignment? actionsAlignment}) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: title,
      ),
    );
  }

  static basicDialog(BuildContext context,
      {Widget? title,
      Widget? content,
      Widget? icon,
      List<Widget>? actions,
      MainAxisAlignment? actionsAlignment}) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        elevation: 50,
        shadowColor: Colors.amber,
        contentTextStyle: const TextStyle(color: Colors.amber),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        backgroundColor: Colors.deepPurple,
        title: title,
        icon: icon,
        content: content,
        actions: actions,
        actionsAlignment: actionsAlignment,
      ),
    );
  }

  static basicModelBottomSheet(BuildContext context,
      {Widget? title,
      Widget? content,
      Widget? icon,
      List<Widget>? actions,
      MainAxisAlignment? actionsAlignment}) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: false,
      enableDrag: false,
      sheetAnimationStyle: AnimationStyle(
        curve: Curves.easeInCirc,
        duration: Durations.long4,
        reverseCurve: Curves.easeOutCirc,
        reverseDuration: Durations.long4,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.white, width: 4)),
      builder: (context) => FractionallySizedBox(
        heightFactor: 0.8,
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(colors: [Colors.purple, Colors.blue])),
          child: title,
        ),
      ),
    );
  }
}
