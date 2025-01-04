import 'package:flutter/material.dart';

class ExplicitAnimationScreen extends StatefulWidget {
  const ExplicitAnimationScreen({super.key});

  @override
  State<ExplicitAnimationScreen> createState() => _ExplicitAnimationScreenState();
}

class _ExplicitAnimationScreenState extends State<ExplicitAnimationScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  // Initial position
  late Offset _startPosition;
  late Offset _currentPosition;
  late Offset _endPosition;

  @override
  void initState() {
    super.initState();

    _currentPosition = Offset(0, 0);
    _endPosition = Offset(0, 0);

    // Initialize the animation controller with appropriate duration
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    // Define the animation to move from _currentPosition to _endPosition
    _animation = Tween<Offset>(begin: _currentPosition, end: _endPosition).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
  }

  void _onPanStart(DragStartDetails details) {
    _animationController.stop(); // Stop any ongoing animation when dragging starts
    _startPosition = details.globalPosition; // Record where the drag started
  }

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      // Update the current position during drag
      _currentPosition = details.globalPosition - _startPosition;
    });
  }

  void _onPanEnd(DragEndDetails details) {
    // When dragging ends, update the end position for animation
    _endPosition = _currentPosition;

    // Update the Tween with the new end position
    _animation = Tween<Offset>(begin: _currentPosition, end: _endPosition).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    // Start the animation to move back to the end position
    _animationController.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explicit Animation Example')),
      body: GestureDetector(
        onPanStart: _onPanStart,
        onPanUpdate: _onPanUpdate,
        onPanEnd: _onPanEnd,
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            // Update position during dragging and animate back after drag ends
            return Transform.translate(
              offset: _animationController.isAnimating ? _animation.value : _currentPosition,
              child: child,
            );
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
