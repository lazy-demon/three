import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChannelNotifier extends StateNotifier<String> {
  ChannelNotifier() : super("");

  void setState(String state) {
    this.state = state;
  }
}
