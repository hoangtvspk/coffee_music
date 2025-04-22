import 'package:buitify_coffee/core/widgets/image/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/config/app_color.dart';
import '../../../../features/auth/presentation/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF1C1C1E), Color(0xFF000000)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildProfileSection(context),
                _buildSection(
                  title: 'Account',
                  children: [
                    _buildSettingTile(
                      context,
                      title: 'Profile',
                      icon: Icons.person_outline,
                      onTap: () {
                        // TODO: Navigate to profile settings
                      },
                    ),
                    _buildSettingTile(
                      context,
                      title: 'Notifications',
                      icon: Icons.notifications_outlined,
                      onTap: () {
                        // TODO: Navigate to notification settings
                      },
                    ),
                  ],
                ),
                _buildSection(
                  title: 'Preferences',
                  children: [
                    _buildSettingTile(
                      context,
                      title: 'Language',
                      icon: Icons.language_outlined,
                      onTap: () {
                        // TODO: Navigate to language settings
                      },
                    ),
                    _buildSettingTile(
                      context,
                      title: 'Appearance',
                      icon: Icons.palette_outlined,
                      onTap: () {
                        // TODO: Navigate to appearance settings
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(const AuthEvent.logout());
                        context.go('/login');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: const Color(0xFFFF3B30),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Sign Out',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSection(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          child: state.maybeWhen(
            success: (user) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  CachedImage(
                    imageUrl: user.images.first.url,
                    width: 100,
                    height: 100,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          user.email,
                          style: const TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF8E8E93),
                    size: 25,
                  ),
                  const SizedBox(width: 16),
                ],
              ),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: Color(0xFF0A84FF),
              ),
            ),
            orElse: () => const SizedBox(),
          ),
        );
      },
    );
  }

  Widget _buildSection({
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          child: Text(
            title.toUpperCase(),
            style: const TextStyle(
              color: Color(0xFF8E8E93),
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xFF1C1C1E),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }

  Widget _buildSettingTile(
    BuildContext context, {
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: const Color(0xFF0A84FF),
                  size: 22,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Color(0xFF8E8E93),
                  size: 20,
                ),
              ],
            ),
          ),
        ),
        if (title != 'Appearance')
          const Divider(
            height: 1,
            thickness: 0.5,
            color: Color(0xFF38383A),
            indent: 16,
          ),
      ],
    );
  }
}
