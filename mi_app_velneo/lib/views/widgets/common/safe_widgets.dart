import 'package:flutter/material.dart';
import 'package:mi_app_velneo/utils/responsive_helper.dart';

/// Contenedor seguro que previene overflow
class SafeContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final BoxDecoration? decoration;
  final double? maxWidthPercentage;
  final double? maxHeightPercentage;

  const SafeContainer({
    super.key,
    required this.child,
    this.padding,
    this.decoration,
    this.maxWidthPercentage = 0.95,
    this.maxHeightPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: ResponsiveHelper.getSafeConstraints(
        context,
        maxWidthPercentage: maxWidthPercentage,
        maxHeightPercentage: maxHeightPercentage,
      ),
      child: Container(
        padding: padding ?? ResponsiveHelper.getSafeHorizontalPadding(context),
        decoration: decoration,
        child: child,
      ),
    );
  }
}

/// Texto seguro que no hace overflow
class SafeText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow overflow;

  const SafeText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

/// Row seguro con Flexible automático
class SafeRow extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  const SafeRow({
    super.key,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: children.map((child) {
        // Si es un texto o contenido flexible, envolverlo en Flexible
        if (child is Text || child is RichText || child is SafeText) {
          return Flexible(child: child);
        }
        return child;
      }).toList(),
    );
  }
}

/// Column seguro con espaciado adaptativo
class SafeColumn extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final double? spacing;

  const SafeColumn({
    super.key,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    double adaptiveSpacing =
        spacing ?? ResponsiveHelper.getSafeVerticalSpacing(context);

    List<Widget> spacedChildren = [];
    for (int i = 0; i < children.length; i++) {
      spacedChildren.add(children[i]);
      if (i < children.length - 1) {
        spacedChildren.add(SizedBox(height: adaptiveSpacing));
      }
    }

    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: spacedChildren,
    );
  }
}

/// Botón seguro que se adapta al ancho de pantalla
class SafeButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? maxWidthPercentage;
  final EdgeInsets? padding;

  const SafeButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.maxWidthPercentage = 0.9,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: ResponsiveHelper.getSafeMaxWidth(
          context,
          percentage: maxWidthPercentage!,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: ResponsiveHelper.isVerySmallScreen(context) ? 48 : 56,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            padding: padding ?? ResponsiveHelper.getAdaptivePadding(context),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: FittedBox(
            child: Text(
              text,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: ResponsiveHelper.getSafeFontSize(
                  context,
                  desktopSize: 18,
                  tabletSize: 16,
                  mobileSize: 14,
                ),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Input field seguro
class SafeTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const SafeTextField({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.keyboardType,
    this.validator,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: ResponsiveHelper.getSafeMaxWidth(context),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        validator: validator,
        obscureText: obscureText,
        style: TextStyle(fontSize: ResponsiveHelper.getSafeFontSize(context)),
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: const OutlineInputBorder(),
          contentPadding: ResponsiveHelper.getAdaptivePadding(context),
        ),
      ),
    );
  }
}
