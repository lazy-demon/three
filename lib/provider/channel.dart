import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifier/channel.dart';

final channelProvider = StateNotifierProvider<ChannelNotifier, String>(
  (ref) => ChannelNotifier(),
);
