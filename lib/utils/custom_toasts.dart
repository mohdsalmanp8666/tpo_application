import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

successToast(msg) {
  Fluttertoast.showToast(msg: msg, backgroundColor: Colors.green.shade300);
}

waitToast() {
  Fluttertoast.showToast(msg: "Please wait...");
}

errorToast(err) {
  Fluttertoast.showToast(msg: err, backgroundColor: Colors.red.shade300);
}
