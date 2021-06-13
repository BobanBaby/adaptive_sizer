part of adaptive_sizer;

class AdaptiveSizerConfig {
  static late MediaQueryData _mediaQueryData;
  static late double _screenWidth;
  static late double _screenHeight;
  static late double _statusBarHeight;
  static late double _bottomBarHeight;
  static late double _safePaddingRight;
  static late double _safePaddingLeft;
  static late double _textScaleFactor;

  static double scaleRatioWidth = 1;
  static double scaleRatioHeight = 1;

  AdaptiveSizerConfig._();

  static final AdaptiveSizerConfig _adaptiveSizerConfig = AdaptiveSizerConfig._();

  factory AdaptiveSizerConfig() {
    return _adaptiveSizerConfig;
  }

  static init(BuildContext context, {double? designWidth, double? designHeight}) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData.size.width;
    _screenHeight = _mediaQueryData.size.height;
    _statusBarHeight = MediaQuery.of(context).padding.top;
    _bottomBarHeight = MediaQuery.of(context).padding.bottom;
    _safePaddingLeft = MediaQuery.of(context).padding.left;
    _safePaddingRight = MediaQuery.of(context).padding.right;
    _textScaleFactor = MediaQuery.of(context).textScaleFactor;
    if (designWidth != null) scaleRatioWidth = (_screenWidth / designWidth);
    if (designHeight != null) scaleRatioHeight = (_screenHeight / designHeight);
  }

  static double get scaleText => min(scaleRatioWidth, scaleRatioHeight);

  static double getHeight(num height) {
    var temp = height * scaleRatioHeight;
    return temp;
  }

  static double getWidth(num width) {
    var temp = width * scaleRatioWidth;
    return temp;
  }

  static double getRadius(num radius) {
    var temp = radius * scaleText;
    return temp;
  }

  static double getFontSize(num size) {
    var temp = size * scaleText;
    return temp;
  }

  static double get statusBarHeight => _statusBarHeight;

  static double get bottomBarHeight => _bottomBarHeight;

  static double get safePaddingLeft => _safePaddingLeft;

  static double get safePaddingRight => _safePaddingRight;

  static double get textScaleFactor => _textScaleFactor;
}
