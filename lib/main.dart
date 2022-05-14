import 'package:crypto_analysis_ep1121/crypto_analysis_p1/CryptoInvestPage2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    // Enabled Riverpod for the entire application
    ProviderScope(
      child: CryptoAnalysisApp(),
    ),
  );
}

class CryptoAnalysisApp extends StatelessWidget {
  const CryptoAnalysisApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: const Color(0xFF1F1F21),
          ),
          primaryColor: Color(0xFF1F1F21)),
      home: CryptoAnalysisp1(),
    );
  }
}
