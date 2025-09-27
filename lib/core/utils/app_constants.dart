import 'package:vivek_portfolio/data/models/achivement.dart';

import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomService> services = [
    CustomService(
      service: 'MOBILE DEVELOPMENT',
      logo: NetworkAssets.androidLogo,
      description:
          'I am a Junior mobile developer. I have experience using Dart and Flutter Framework.',
    ),
    CustomService(
      service: 'UI & UX DESIGNING',
      logo: NetworkAssets.uiDesignLogo,
      description:
          'I design beautiful web interfaces with Figma and Adobe XD. I design beautiful web interfaces with Figma and Adobe XD.',
    ),
    CustomService(
      service: 'WEB SCRAPING',
      logo: NetworkAssets.scrappingLogo,
      description:
          'I can collect content and data from the internet then manipulate and analyze as needed.',
    ),
  ];

  static const List<Achievement> achievements = [
    Achievement(
      name: "Master Flutter and Firebase",
      certificationUrl: NetworkAssets.udemyCertificateUrl,
      imageUrl: NetworkAssets.udemyLogo,
      issuedBy: "Udemy",
    ),
    Achievement(
      name: "Java Full Stack",
      imageUrl: NetworkAssets.jspidersLogo,
      certificationUrl: NetworkAssets.jspidersCertificateUrl,
      issuedBy: "Jspiders",
    ),
  ];
  static List<Project> projects = [
    Project(
      name: 'Chat App',
      logoUrl:
          'https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/assets/images/logo.png',
      description:
          'A real-time chat application built with Flutter and Firebase.',
      features: const [
        'Responsive UI support for all mobile devices',
        'Simple and clean UI design',
        'Send text messages, images, videos and files',
        'Chat with your friends in real-time',
        'Chat in groups',
        'Search users by email',
      ],
      technologies: const ['Flutter', 'Dart', 'Firebase', 'Cloudinary Storage'],
      libraries: const {
        'provider': 'https://pub.dev/packages/provider',
        'get_it': 'https://pub.dev/packages/get_it',
        'http': 'https://pub.dev/packages/http',
        'timeago': 'https://pub.dev/packages/timeago',
        'firebase_core': 'https://pub.dev/packages/firebase_core',
        'firebase_auth': 'https://pub.dev/packages/firebase_auth',
        'firebase_analytics': 'https://pub.dev/packages/firebase_analytics',
        'image_picker': 'https://pub.dev/packages/image_picker',
        'url_launcher': 'https://pub.dev/packages/url_launcher',
        'flutter_keyboard_visibility':
            'https://pub.dev/packages/flutter_keyboard_visibility',
      },
      screenshots: const [
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.06.48%E2%80%AFPM.png",
        'https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.05.00%E2%80%AFPM.png',
        // "https://github.com/Vivekkurre1/meeting_sync/blob/main/screen_images/Screenshot%202025-08-20%20at%201.04.34%E2%80%AFPM.png?raw=true",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.06.48%E2%80%AFPM.png",
        'https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.05.00%E2%80%AFPM.png',
      ],
      // liveDemoUrl: 'https://yourportfolio.com',
      githubUrl: 'https://github.com/Vivekkurre1/do_chat',
      isWebProject: false,
    ),
    Project(
      name: 'Weather App',
      logoUrl: 'https://img.icons8.com/color/48/000000/cloud.png',
      description:
          'A weather forecasting app with real-time updates and interactive maps.',
      features: [
        'Real-time weather updates',
        'Interactive map',
        'Multiple location support',
      ],
      technologies: ['Flutter', 'Dart', 'OpenWeatherMap API'],
      libraries: {
        'http': 'https://pub.dev/packages/http',
        'provider': 'https://pub.dev/packages/provider',
      },
      screenshots: [
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.06.48%E2%80%AFPM.png",
        'https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.05.00%E2%80%AFPM.png',
      ],
      liveDemoUrl: 'https://weatherapp.example.com',
      githubUrl: 'https://github.com/yourusername/weather-app',
      isWebProject: false,
    ),
    Project(
      name: 'Todo List',
      logoUrl: 'https://img.icons8.com/color/48/000000/todo-list.png',
      description:
          'A productivity app to manage daily tasks with notifications and priorities.',
      features: ['Task categorization', 'Push notifications', 'Priority flags'],
      technologies: ['Flutter', 'Dart', 'SQLite'],
      libraries: {
        'sqflite': 'https://pub.dev/packages/sqflite',
        'flutter_local_notifications':
            'https://pub.dev/packages/flutter_local_notifications',
      },
      screenshots: [
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.06.48%E2%80%AFPM.png",
        'https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.05.00%E2%80%AFPM.png',
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.06.48%E2%80%AFPM.png",
        'https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.05.00%E2%80%AFPM.png',
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.06.48%E2%80%AFPM.png",
        'https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.05.00%E2%80%AFPM.png',
      ],
      liveDemoUrl: null,
      githubUrl: 'https://github.com/yourusername/todo-list',
      isWebProject: false,
    ),
    Project(
      name: 'E-Commerce App',
      logoUrl: 'https://img.icons8.com/ios-filled/50/000000/shopping-cart.png',
      description:
          'A complete e-commerce app with product browsing, cart and payment integration.',
      features: [
        'Product search',
        'Shopping cart',
        'Payment Gateway Integration',
      ],
      technologies: ['Flutter', 'Dart', 'Stripe'],
      libraries: {
        'flutter_stripe': 'https://pub.dev/packages/flutter_stripe',
        'cached_network_image': 'https://pub.dev/packages/cached_network_image',
      },
      screenshots: [
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.06.48%E2%80%AFPM.png",
        'https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.05.00%E2%80%AFPM.png',
      ],
      liveDemoUrl: 'https://ecommerceapp.com',
      githubUrl: 'https://github.com/yourusername/ecommerce-app',
      isWebProject: false,
    ),
    Project(
      name: 'Chat Application',
      logoUrl: 'https://img.icons8.com/color/48/000000/chat.png',
      description:
          'Real-time chat app with group chat and media sharing features.',
      features: ['Real-time messaging', 'Group chat', 'Media sharing'],
      technologies: ['Flutter', 'Dart', 'Firebase Firestore'],
      libraries: {
        'cloud_firestore': 'https://pub.dev/packages/cloud_firestore',
        'firebase_auth': 'https://pub.dev/packages/firebase_auth',
      },
      screenshots: [
        "https://res.cloudinary.com/dnjeaojih/image/upload/v1744282840/images/users/profile_o8tAJghauAQdQtCat8buDixYlnw1.jpg",
        "https://res.cloudinary.com/dnjeaojih/image/upload/v1744282840/images/users/profile_o8tAJghauAQdQtCat8buDixYlnw1.jpg",
      ],
      liveDemoUrl: 'https://chatapp.example.com',
      githubUrl: 'https://github.com/yourusername/chat-app',
      isWebProject: true,
    ),
  ];
}
