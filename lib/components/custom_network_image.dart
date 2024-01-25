import 'package:flutter/material.dart';
import 'package:my_app/utils/custom_colors.dart';

class CustomNetworkImage extends StatelessWidget {
  final String url;
  final double size;

  const CustomNetworkImage({
    super.key,
    required this.url,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.fill,
      errorBuilder: (context, exception, stackTrace) {
        return SizedBox(
          width: size,
          height: size,
          child: const Center(
            child: Icon(
              Icons.error,
              size: 32.0,
              color: CustomColors.escuro,
            ),
          ),
        );
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;

        return SizedBox(
          width: size,
          height: size,
          child: Center(
            child: CircularProgressIndicator(
              color: CustomColors.verde3,
              value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes! : null,
            ),
          ),
        );
      },
    );
  }
}
