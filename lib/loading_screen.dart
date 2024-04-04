import 'package:flutter/material.dart';

import 'main.dart';
import 'gradient_theme.dart';

//loading screen used to allow seamless transition to the desired page.
class LoadingScreen extends StatefulWidget {
  final VoidCallback onInitializationComplete;

  const LoadingScreen({super.key, required this.onInitializationComplete});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _initializeAsyncDependencies();
  }

  Future<void> _initializeAsyncDependencies() async {
    Future.delayed(
      const Duration(seconds: 2),
      () => widget.onInitializationComplete(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: MaterialApp(
        title: 'Loading Screen',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    if (_hasError) {
      
      return Center(
        child: ElevatedButton(
          child: const Text('retry'),
          onPressed: () => main(),
        ),
      );
    }
    
    return const Center(
      child: SizedBox(
            width: 50, 
            height: 50,
            child: CircularProgressIndicator(
              strokeWidth: 6,
            ),
          ),
    );
  }
}
