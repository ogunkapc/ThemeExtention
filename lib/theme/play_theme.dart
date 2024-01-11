import 'package:flutter/material.dart';
import 'package:theme_play/theme/text_styles.dart';

class PlayThemeData extends ThemeExtension<PlayThemeData> {
  final PlayTextTheme? textTheme;
  final Color? headerColor;
  final Color? cardTileColor;

  const PlayThemeData({
    this.textTheme,
    this.headerColor,
    this.cardTileColor,
  });

  PlayThemeData.light()
      : this(
          textTheme: PlayTextTheme.light(),
          headerColor: Colors.white.withOpacity(0.699999988079071),
          cardTileColor: Colors.white,
        );

  PlayThemeData.dark()
      : this(
          textTheme: PlayTextTheme.dark(),
          headerColor: Colors.black.withOpacity(0.699999988079071),
          cardTileColor: const Color(0xFF161616),
        );

  @override
  ThemeExtension<PlayThemeData> copyWith({
    PlayTextTheme? textTheme,
    Color? headerColor,
    Color? cardTileColor,
  }) {
    return PlayThemeData(
      textTheme: textTheme ?? this.textTheme,
      headerColor: headerColor ?? this.headerColor,
      cardTileColor: cardTileColor ?? this.cardTileColor,
    );
  }

  @override
  ThemeExtension<PlayThemeData> lerp(
      covariant ThemeExtension<PlayThemeData>? other, double t) {
    if (other is! PlayThemeData) return this;
    return PlayThemeData(
      textTheme: textTheme?.lerp(other.textTheme, t),
      headerColor: Color.lerp(headerColor, other.headerColor, t),
      cardTileColor: Color.lerp(cardTileColor, other.cardTileColor, t),
    );
  }
}
