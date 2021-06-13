part of adaptive_sizer;

extension SizerExt on num {
  double get h => AdaptiveSizerConfig.getHeight(this);

  double get w => AdaptiveSizerConfig.getWidth(this);

  double get sp => AdaptiveSizerConfig.getFontSize(this);

  double get r => AdaptiveSizerConfig.getRadius(this);
}
