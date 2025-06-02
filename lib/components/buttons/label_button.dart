import 'package:flutter/material.dart';

class LabelButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String label;
  final Color? bgColor;
  final Color? fontColor;
  final Color? borderColor;
  final bool loading;
  final Color? disabledColor;
  final double? fontSize;
  final double? borderRadius;

  const LabelButton({
    super.key,
    this.onTap,
    required this.label,
    this.fontColor,
    this.bgColor,
    this.borderColor,
    this.disabledColor,
    this.fontSize,
    this.borderRadius,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) => MaterialButton(
        onPressed: onTap == null
            ? null
            : !loading
                ? () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    onTap!();
                  } // If not loading, set the onTap callback
                : null, // Disable if loading
        height: 48,
        elevation: 0.0,
        disabledColor:
            disabledColor ?? Theme.of(context).primaryColor.withValues(alpha:0.5),
        color: bgColor ?? Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
          side: BorderSide(color: borderColor ?? Colors.transparent),
        ),
        child: loading
            ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
            : Text(
                label,
                style: TextStyle(
                  color: fontColor ?? Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize ?? 15,
                ),
              ),
      );
}
