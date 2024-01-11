import 'package:flutter/material.dart';
import 'package:theme_play/theme/play_theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFEBEBEB),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Header(),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true, // TODO: Add
                itemCount: 5,
                padding: const EdgeInsets.all(16),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemBuilder: (context, index) {
                  return const CardTile();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardTile extends StatelessWidget {
  const CardTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = PlayThemeData.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
          color: theme.cardTileColor,
          shadows: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 10,
              offset: Offset.zero,
              spreadRadius: 0,
            )
          ],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      child: Row(
        children: [
          const FlutterLogo(
            size: 64,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Card text",
                  style: theme.textTheme!.title,
                ),
                Text(
                  "Nulla vitae elit libero, a pharetra augue.",
                  style: theme.textTheme!.body,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = PlayThemeData.of(context);
    return Container(
      height: 250,
      padding: const EdgeInsets.fromLTRB(16, 37, 16, 16),
      decoration: BoxDecoration(
        color: theme.headerColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text: 'This is ',
              style: theme.textTheme!.headline,
              children: const [
                TextSpan(
                  text: 'food\n',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                TextSpan(text: 'you'),
                TextSpan(
                  text: ' love',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                )),
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => const Color(0xFF204866)),
                // shape: MaterialStateProperty.all(
                // RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(8),
                // ),
                // ),
              ),
              child: const Text(
                "Order now",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ))
        ],
      ),
    );
  }
}
