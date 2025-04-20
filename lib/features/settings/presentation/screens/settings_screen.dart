import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/config/app_color.dart';
import '../../../../features/auth/presentation/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grayLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.person, color: Colors.white),
                title: const Text(
                  'Account',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // TODO: Navigate to account settings
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications, color: Colors.white),
                title: const Text(
                  'Notifications',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // TODO: Navigate to notification settings
                },
              ),
              ListTile(
                leading: const Icon(Icons.language, color: Colors.white),
                title: const Text(
                  'Language',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // TODO: Navigate to language settings
                },
              ),
              const Spacer(),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(const AuthEvent.logout());
                    context.go('/login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                  ),
                  child: const Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
