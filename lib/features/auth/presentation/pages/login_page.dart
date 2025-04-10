import 'package:buitify_coffee/core/config/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/login_background_cf_ice.png'),
          fit: BoxFit.fitWidth,
          alignment: Alignment.bottomCenter,
        ),
        color: AppColor.backgroundGray,
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
                  context.go('/home'); //
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Welcome ${user.name}')),
                  );
                },
                failure: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Error: $message')),
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
                  if (state is AuthLoading)
                    const CircularProgressIndicator(
                      color: AppColor.brownDark,
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(
                              AuthEvent.login(
                                email: _emailController.text.trim(),
                                password: _passwordController.text.trim(),
                              ),
                            );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.button,
                        minimumSize: const Size(double.infinity, 55),
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 4,
                        children: [
                          SvgPicture.asset(
                            'assets/svgs/spotify_icon.svg',
                            colorFilter: const ColorFilter.mode(
                              AppColor.textSecondary,
                              BlendMode.srcIn,
                            ),
                          ),
                          const Text('Login with Spotify',
                              style: TextStyle(color: AppColor.textSecondary))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ));
            },
          ),
        ],
      ),
    );
  }
}
