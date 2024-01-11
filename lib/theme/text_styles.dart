import 'package:flutter/material.dart';

class PlayTextTheme extends ThemeExtension<PlayTextTheme> {
  final TextStyle? headline;
  final TextStyle? title;
  final TextStyle? body;

  PlayTextTheme({this.headline, this.title, this.body});

  PlayTextTheme.light()
      : this(
          headline: const TextStyle(
            color: Color(0xFF204866),
            fontSize: 40,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          title: const TextStyle(
            color: Color(0XFF204866),
            fontWeight: FontWeight.w700,
          ),
          body: const TextStyle(
            color: Color(0XFF204866),
            fontWeight: FontWeight.w400,
          ),
        );

  PlayTextTheme.dark()
      : this(
          headline: const TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          title: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
          body: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        );

  @override
  ThemeExtension<PlayTextTheme> copyWith({
    TextStyle? headline,
    TextStyle? title,
    TextStyle? body,
  }) {
    return PlayTextTheme(
      headline: headline ?? this.headline,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  @override
  PlayTextTheme lerp(covariant ThemeExtension<PlayTextTheme>? other, double t) {
    if (other is! PlayTextTheme) {
      return this;
    }
    return PlayTextTheme(
      headline: TextStyle.lerp(headline, other.headline, t),
      title: TextStyle.lerp(title, other.title, t),
      body: TextStyle.lerp(body, other.body, t),
    );
  }
}
