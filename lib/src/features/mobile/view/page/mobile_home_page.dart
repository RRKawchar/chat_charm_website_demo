import 'package:chat_charm_website/src/core/utils/assets_path.dart';
import 'package:chat_charm_website/src/core/widgets/home_info_widget.dart';
import 'package:chat_charm_website/src/core/widgets/k_divider.dart';
import 'package:chat_charm_website/src/core/widgets/k_footer_widget.dart';
import 'package:chat_charm_website/src/core/widgets/k_screenshot_widget.dart';
import 'package:chat_charm_website/src/features/mobile/view/widgets/mobile_features_card.dart';
import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(AssetsPath.appIcon)),
        title: const Text("Web Home Page"),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.download,
            ),
            label: const Text(
              "Download App",
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HomeInfoWidget(),
              const SizedBox(height: 40),
              const KDivider(),
              const SizedBox(height: 40),
              Text(
                "Features Banner",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 30),
              Image.asset(
                AssetsPath.featureBanner,
                height: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 30),
              const KDivider(),
              const SizedBox(height: 30),
              Text(
                "Features",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 30),
              const MobileFeatureCard(
                icon: Icons.info,
                title: "Easy to use",
                description:
                    "ChatCharm is an easy-to-use chat app designed for smooth communication."
                    "It is simple communication Chat App.",
              ),
              const MobileFeatureCard(
                icon: Icons.chat,
                title: "One to One Chat",
                description:
                "ChatCharm allows users to have private, real-time conversations with individuals."
                    " With an intuitive interface, users can easily send text messages, images, and other media,"
                    " making communication fast and secure",
              ),
              const MobileFeatureCard(
                icon: Icons.spatial_audio,
                title: "Audio Call",
                description:
                " ChatCharm enables users to make high-quality, real-time voice calls directly within the app. "
                    "Whether connecting with friends, family, or colleagues.",
              ),
              const MobileFeatureCard(
                icon: Icons.video_call,
                title: "Video Call",
                description:
                "ChatCharm allows users to have face-to-face conversations in real-time, "
                    "offering a high-quality and immersive experience. ",
              ),

              const SizedBox(height: 40),
              const KDivider(),
              const SizedBox(height: 30),
              Text(
                "Screen Shot",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 30),
              const KScreenShotWidget(),
              const SizedBox(height: 40),
              const KDivider(),
              const SizedBox(height: 40),
              const KFooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}
