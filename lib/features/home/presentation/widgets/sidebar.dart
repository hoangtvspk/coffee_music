import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/config/app_color.dart';
import '../../../../core/utils/ui_utils.dart';
import '../../../../features/auth/presentation/bloc/auth_bloc.dart';
import 'user_avatar.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 87, 44, 14),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 60.0, right: 20, left: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset(
            //   'assets/images/app_icon.png',
            //   width: 40,
            // ),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.maybeWhen(
                  success: (user) => Row(
                    children: [
                      const UserAvatar(),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'View Profile',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  loading: () => const CircularProgressIndicator(
                    color: AppColor.white,
                  ),
                  orElse: () => const SizedBox(),
                );
              },
            ),

            const Divider(
              color: Colors.white24,
              height: 40,
            ),
            // Navigation Items
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildNavItem(
                  context,
                  icon: Icons.home,
                  label: 'Home',
                  onTap: () {
                    context.go('/');
                    Navigator.pop(context); // Close drawer after navigation
                  },
                ),
                _buildNavItem(
                  context,
                  icon: Icons.search,
                  label: 'Search',
                  onTap: () {
                    context.go('/search');
                    Navigator.pop(context);
                  },
                ),
                _buildNavItem(
                  context,
                  icon: Icons.library_music,
                  label: 'Your Library',
                  onTap: () {
                    context.go('/library');
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            const Spacer(),
            // User Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  const Divider(color: Colors.white24),
                  const SizedBox(height: 16),
                  _buildNavItem(
                    context,
                    icon: Icons.settings,
                    label: 'Settings',
                    onTap: () {
                      context.go('/settings');
                      Navigator.pop(context);
                    },
                  ),
                  _buildNavItem(
                    context,
                    icon: Icons.logout,
                    label: 'Logout',
                    onTap: () {
                      Navigator.pop(context);
                      UiUtils.showLogoutConfirmation(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: Icon(icon, color: Colors.white),
      title: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: onTap,
    );
  }
}
