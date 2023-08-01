import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //* These are the two ways to access the provider

    final discoverProvider = context.watch<DiscoverProvider>();
    // final discoverProvider2 = Provider.of<DiscoverProvider>(context);

    // final discoverProvider = context.read<DiscoverProvider>();
    // final discoverProvider2 = Provider.of<DiscoverProvider>(context, listen: false);

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(
              child: CircularProgressIndicator(
              strokeWidth: 2,
            ))
          : VideoScrollableView(
              videos: discoverProvider.videos,
            ),
    );
  }
}
