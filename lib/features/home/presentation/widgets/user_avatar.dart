import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:buitify_coffee/core/config/app_color.dart';
import 'package:buitify_coffee/features/auth/presentation/bloc/auth_bloc.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return CircleAvatar(
          backgroundColor: AppColor.primary,
          backgroundImage: state.maybeWhen(
            success: (user) => user.images.isNotEmpty
                ? NetworkImage(user.images.first.url)
                : null,
            orElse: () => null,
          ),
          child: state.maybeWhen(
            loading: () => const CircularProgressIndicator(color: Colors.white),
            success: (user) => user.images.isEmpty
                ? Text(
                    user.name[0].toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  )
                : null,
            orElse: () => const Text(
              'U',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
