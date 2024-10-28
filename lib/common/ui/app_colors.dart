import 'dart:ui';

class AppColors {
  static const white = Color(0xFFFFFFFF);
  static const white100 = Color(0xFFFDFDFF);

  static const textBlackPrimary = Color(0xFF272B35);
  static const textBlackSecondary = Color(0xFF5D6068);
}

extension ColorExt on Color {
  ColorFilter get filter => ColorFilter.mode(this, BlendMode.srcIn);
}
