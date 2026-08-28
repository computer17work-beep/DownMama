import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Logo / App Name
              Center(
                child: ShaderMask(
                  shaderCallback: (bounds) {
                    return AppGradients.logo.createShader(bounds);
                  },
                  child: const Text(
                    'DownMama',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 8),

              const Center(
                child: Text(
                  'VIDEO DOWNLOADER',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 12,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 45),

              const Text(
                'Download your video',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Paste a supported video link below',
                style: TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 20),

              // URL Box
              TextField(
                decoration: InputDecoration(
                  hintText: 'Paste video URL...',
                  prefixIcon: const Icon(
                    Icons.link_rounded,
                    color: AppColors.cyan,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.content_paste_rounded,
                      color: AppColors.purple,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 18),

              // Download Button
              Container(
                width: double.infinity,
                height: 58,
                decoration: BoxDecoration(
                  gradient: AppGradients.logo,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.cyan.withOpacity(0.25),
                      blurRadius: 25,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  icon: const Icon(Icons.download_rounded),
                  label: const Text(
                    'Download',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 35),

              // Features
              Row(
                children: [
                  Expanded(
                    child: _featureCard(
                      Icons.high_quality_rounded,
                      '144p - 2160p',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _featureCard(
                      Icons.speed_rounded,
                      'Fast Download',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: _featureCard(
                      Icons.pause_circle_outline_rounded,
                      'Pause / Resume',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _featureCard(
                      Icons.security_rounded,
                      'Legal Sources',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _featureCard(IconData icon, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: Column(
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return AppGradients.logo.createShader(bounds);
            },
            child: Icon(
              icon,
              size: 28,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}