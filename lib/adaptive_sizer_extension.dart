import 'package:adaptive_sizer/adaptive_sizer.dart';

extension SizerExt on num {
  double get h => SizeConfig.getHeight(this);

  double get w => SizeConfig.getWidth(this);

  double get sp => SizeConfig.getFontSize(this);

  double get r => SizeConfig.getRadius(this);
}
