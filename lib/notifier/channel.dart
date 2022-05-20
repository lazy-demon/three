import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChannelNotifier extends StateNotifier<String> {
  ChannelNotifier() : super("init");

  void setState(String state) {
    this.state = state;
  }

  String status() {
    return state;
  }
}
