// import 'package:flutter/material.dart';
// import 'package:flutter_bloc_with_clean_architectore/features/auth/presentation/pages/auth_service.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const SizedBox(height: 48),
//                 // Spotify Logo
//                 Image.asset(
//                   'assets/images/spotify_logo.png',
//                   height: 50,
//                 ),
//                 const SizedBox(height: 32),
//                 const Text(
//                   'Đăng nhập vào Spotify',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 32),

//                 // Social Login Buttons
//                 _LoginButton(
//                   icon: 'assets/images/google_icon.png',
//                   text: 'Tiếp tục bằng Google',
//                   onTap: () {
//                     // TODO: Implement Google login
//                   },
//                 ),
//                 const SizedBox(height: 12),
//                 _LoginButton(
//                   icon: 'assets/images/facebook_icon.png',
//                   text: 'Tiếp tục bằng Facebook',
//                   onTap: () {
//                     // TODO: Implement Facebook login
//                   },
//                 ),
//                 const SizedBox(height: 12),
//                 _LoginButton(
//                   icon: 'assets/images/apple_icon.png',
//                   text: 'Tiếp tục bằng Apple',
//                   onTap: () {
//                     // TODO: Implement Apple login
//                   },
//                 ),
//                 const SizedBox(height: 12),
//                 _LoginButton(
//                   icon: 'assets/images/spotify_icon.png',
//                   text: 'Tiếp tục bằng Spotify',
//                   onTap: () async {
//                     try {
//                       final authService = AuthService();
//                       final accessToken = await authService.signInWithSpotify();

//                       if (accessToken != null) {
//                         final userProfile =
//                             await authService.getUserProfile(accessToken);
//                         if (userProfile != null) {
//                           print('Successfully logged in with Spotify!');
//                           print('User profile: $userProfile');
//                           // TODO: Store the access token securely
//                           // TODO: Navigate to home screen
//                         } else {
//                           print('Failed to fetch user profile');
//                           // TODO: Show error message to user
//                         }
//                       } else {
//                         print('Failed to get access token');
//                         // TODO: Show error message to user
//                       }
//                     } catch (e) {
//                       print('Error during Spotify login: $e');
//                       // TODO: Show error message to user
//                     }
//                   },
//                 ),
//                 const SizedBox(height: 12),
//                 _LoginButton(
//                   icon: 'assets/images/phone_icon.png',
//                   text: 'Tiếp tục bằng số điện thoại',
//                   onTap: () {
//                     // TODO: Implement phone login
//                   },
//                 ),
//                 const SizedBox(height: 32),

//                 // Email/Username Login
//                 const Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Email hoặc tên người dùng',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 _CustomTextField(
//                   hintText: 'Email hoặc tên người dùng',
//                   onChanged: (value) {
//                     // TODO: Handle email/username input
//                   },
//                 ),
//                 const SizedBox(height: 16),
//                 const Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Mật khẩu',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 _CustomTextField(
//                   hintText: 'Mật khẩu',
//                   isPassword: true,
//                   onChanged: (value) {
//                     // TODO: Handle password input
//                   },
//                 ),
//                 const SizedBox(height: 24),
//                 _GreenButton(
//                   text: 'Đăng nhập',
//                   onTap: () {
//                     // TODO: Handle login with email/password
//                   },
//                 ),
//                 const SizedBox(height: 24),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _LoginButton extends StatelessWidget {
//   final String icon;
//   final String text;
//   final VoidCallback onTap;

//   const _LoginButton({
//     required this.icon,
//     required this.text,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey[700]!),
//           borderRadius: BorderRadius.circular(30),
//         ),
//         child: Row(
//           children: [
//             Image.asset(icon, height: 24),
//             const SizedBox(width: 12),
//             Text(
//               text,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _CustomTextField extends StatelessWidget {
//   final String hintText;
//   final bool isPassword;
//   final Function(String) onChanged;

//   const _CustomTextField({
//     required this.hintText,
//     this.isPassword = false,
//     required this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       style: const TextStyle(color: Colors.white),
//       obscureText: isPassword,
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: TextStyle(color: Colors.grey[600]),
//         filled: true,
//         fillColor: Colors.grey[900],
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(4),
//           borderSide: BorderSide(color: Colors.grey[700]!),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(4),
//           borderSide: const BorderSide(color: Colors.white),
//         ),
//         suffixIcon: isPassword
//             ? Icon(Icons.visibility_off, color: Colors.grey[600])
//             : null,
//       ),
//       onChanged: onChanged,
//     );
//   }
// }

// class _GreenButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onTap;

//   const _GreenButton({
//     required this.text,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.symmetric(vertical: 16),
//         decoration: BoxDecoration(
//           color: const Color(0xFF1DB954),
//           borderRadius: BorderRadius.circular(30),
//         ),
//         child: Text(
//           text,
//           style: const TextStyle(
//             color: Colors.black,
//             fontSize: 16,
//             fontWeight: FontWeight.w600,
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }
