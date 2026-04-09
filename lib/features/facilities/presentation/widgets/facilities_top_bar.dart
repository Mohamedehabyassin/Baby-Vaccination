import 'package:baby_vaccination/core/theme/components/theme_factory.dart';
import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class FacilitiesTopBar extends StatelessWidget {
  const FacilitiesTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top + 20,
      left: 20,
      right: 20,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: currentTheme.surface,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(Icons.local_hospital, color: currentTheme.primary500),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.loc.facilities,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: currentTheme.onSurface,
                    ),
                  ),
                  Text(
                    context.loc.findClinic,
                    style: TextStyle(
                      fontSize: 12,
                      color: currentTheme.onSurface.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.filter_list, color: currentTheme.primary500),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
