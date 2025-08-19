import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_schollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();


    return Scaffold(
      body: discoverProvider.initianlLoading
        ? const Center( child: CircularProgressIndicator( strokeWidth: 2,))
        : VideoSchollableView(videos: discoverProvider.videos)
    );
  }
}
