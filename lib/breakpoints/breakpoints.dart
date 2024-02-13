import 'package:flutter/material.dart';

class BreakpointInfix {
  static const double xsm = 320;
  static const double sm = 480;
  static const double md = 768;
  static const double lg = 1024;
  static const double xl = 1200;
  static const double xxl = 1920;
}

T breakpointByWidth<T>(BuildContext context, {
  required T defaultSize,
  T? xsm,
  T? sm,
  T? md,
  T? lg,
  T? xl,
  T? xxl,
}) {
  double screenWidth = MediaQuery.of(context).size.width;

  if (xsm != null && screenWidth < BreakpointInfix.xsm) {
    return xsm;
  } else if (sm != null && screenWidth < BreakpointInfix.sm) {
    return sm;
  } else if (md != null && screenWidth < BreakpointInfix.md) {
    return md;
  } else if (lg != null && screenWidth < BreakpointInfix.lg) {
    return lg;
  } else if (xl != null && screenWidth < BreakpointInfix.xl) {
    return xl;
  } else if (xxl != null && screenWidth < BreakpointInfix.xxl) {
    return xxl;
  }
  
  return defaultSize;
}
