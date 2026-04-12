import 'package:baby_vaccination/core/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ManageBabySecurityNote extends StatelessWidget {
  const ManageBabySecurityNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFFFDFA0).withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              Icons.verified_user,
              color: Color(0xFF795900),
              size: 32,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.loc.yourDataIsSecured,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5C4300),
                    fontSize: 16,
                  ),
                ),
                Text(
                  context.loc.encryptedMedicalJournals,
                  style: const TextStyle(
                    color: Color(0xFF5C4300),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
