import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
        centerTitle: true,
      ),
      body: Container(
        child: ModelViewer(
          innerModelViewerHtml: "",
          xrEnvironment: true,
          interactionPolicy: InteractionPolicy.alwaysAllow,
          src:
              'https://modelviewer.dev/shared-assets/models/RobotExpressive.glb',
          alt: "A 3D model of an astronaut",
          ar: true,
          animationName: "horse_A_",
          autoPlay: true,
          autoRotate: true,
          cameraControls: true,
        ),
      ),
    );
  }
}
