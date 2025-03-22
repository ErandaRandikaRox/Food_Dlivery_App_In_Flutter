import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  final Widget nextScreen; // Screen to navigate to after splash

  const SplashScreen({super.key, required this.nextScreen});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/animation/logo.mp4')
      ..initialize().then((_) {
        setState(() {}); 
        _controller.play(); 
        _controller.setLooping(false); 
        _controller.addListener(() {
          if (_controller.value.position >= _controller.value.duration) {
            
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => widget.nextScreen),
            );
          }
        });
      }).catchError((error) {
        print('Error initializing video: $error');
      
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => widget.nextScreen),
        );
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : const CircularProgressIndicator(), 
      ),
    );
  }
}
