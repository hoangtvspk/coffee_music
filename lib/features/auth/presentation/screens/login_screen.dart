import 'package:buitify_coffee/core/config/app_color.dart';
import 'package:buitify_coffee/core/utils/snackbar_utils.dart';
import 'package:buitify_coffee/core/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/auth_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_background_cf_ice.png'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
          ),
          color: AppColor.gray,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset('assets/images/login_background_header.png'),
            ),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeWhen(
                  success: (user) {
                    SnackbarUtils.showSnackbar(
                      context: context,
                      message: 'Welcome ${user.name}',
                    );
                    context.go('/home');
                  },
                  failure: (message) {
                    SnackbarUtils.showSnackbar(
                      context: context,
                      message: message,
                      isError: true,
                    );
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 20,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: AppButton(
                        text: 'Login with Spotify',
                        onPressed: () {
                          context.read<AuthBloc>().add(
                                AuthEvent.login(
                                  email: _emailController.text.trim(),
                                  password: _passwordController.text.trim(),
                                ),
                              );
                        },
                        iconPath: 'assets/svgs/spotify_icon.svg',
                        isLoading: state is AuthLoading,
                        isFullWidth: true,
                      ),
                    ),
                    const SizedBox(height: 100),
                  ],
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
