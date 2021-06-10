import 'package:responsive_sizer/responsive_sizer.dart';

extension SizerExt on num {
  double get h => SizeConfig.getHeight(this);

  double get w => SizeConfig.getWidth(this);

  double get s => SizeConfig.getHeight(this);
}
