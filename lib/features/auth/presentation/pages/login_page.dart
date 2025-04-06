import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  static const environment = String.fromEnvironment('ENVIRONMENT', defaultValue: 'dev');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login', style: TextStyle(color: Color(0xFF8D623A))), backgroundColor: const Color(0xFFE8DAB8)),
      backgroundColor: const Color(0xFFE8DAB8),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset('assets/images/cfmusic_logo.png'),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 16),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeWhen(
                  success: (user) {
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
                return Column(
                  children: [
                    if (state is AuthLoading) const CircularProgressIndicator(),
                    ElevatedButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(
                              AuthEvent.login(
                                email: _emailController.text.trim(),
                                password: _passwordController.text.trim(),
                              ),
                            );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF8D623A),
                      ),
                      child: const Text('Login', style: TextStyle(color: Colors.white)),
                    ),
                    BlocListener<AuthBloc, AuthState>(
                      listener: (context, state) {
                        if (state is AuthSuccess) {
                          context.go(
                              '/home'); // ✅ Navigate to home after successful login
                        } else if (state is AuthFailure) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(state.message)),
                          );
                        }
                      },
                      child:
                          Container(), // Keep an empty container to wrap around BlocListener
                    ),
                  ],
                );
              },
            ),
            TextButton(
              onPressed: () {
                context.go('/register');
              },
              child: const Text('Don\'t have an account? Register'),
            ),
          ],
        ),
      ),
    );
  }
}
