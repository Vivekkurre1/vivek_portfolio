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
        "https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/screenshots/Screenshot%202025-10-01%20at%2012.04.40%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/screenshots/Screenshot%202025-10-01%20at%2012.01.19%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/screenshots/Screenshot%202025-10-01%20at%2012.01.27%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/screenshots/Screenshot%202025-10-01%20at%2011.58.32%E2%80%AFAM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/screenshots/Screenshot%202025-10-01%20at%2011.58.51%E2%80%AFAM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/screenshots/Screenshot%202025-10-01%20at%2011.59.36%E2%80%AFAM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/screenshots/Screenshot%202025-10-01%20at%2011.59.45%E2%80%AFAM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/screenshots/Screenshot%202025-10-01%20at%2012.00.03%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/screenshots/Screenshot%202025-10-01%20at%2012.00.19%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/screenshots/Screenshot%202025-10-01%20at%2012.00.29%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/screenshots/Screenshot%202025-10-01%20at%2012.00.47%E2%80%AFPM.png",
      ],
      // liveDemoUrl: 'https://yourportfolio.com',
      githubUrl: 'https://github.com/Vivekkurre1/do_chat',
      isWebProject: false,
    ),
    Project(
      name: 'Meeting Clone (Meeting Sync)',
      // logoUrl: 'https://img.icons8.com/color/48/000000/cloud.png',
      logoUrl:
          "https://img.icons8.com/?size=100&id=7I3BjCqe9rjG&format=png&color=000000",
      description:
          'A video conferencing app that allows users to schedule and join meetings seamlessly.',
      features: [
        'Real-time video and audio',
        'Screen sharing',
        'Meadia sharing',
        'Chat functionality',
        'Meeting scheduling and reminders',
        'User authentication with Google Sign-In',
      ],
      technologies: ['Flutter', 'Dart', 'Jitsi Meet SDK'],
      libraries: {
        'cloud_firestore': 'https://pub.dev/packages/cloud_firestore',
        'firebase_auth': 'https://pub.dev/packages/firebase_auth',
        'firebase_core': 'https://pub.dev/packages/firebase_core',
        'google_sign_in': 'https://pub.dev/packages/google_sign_in',
        'intl': 'https://pub.dev/packages/intl',
        'jitsi_meet_flutter_sdk':
            'https://pub.dev/packages/jitsi_meet_flutter_sdk',
      },
      screenshots: [
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.04.34%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.05.00%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.05.20%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.05.20%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.06.07%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.06.34%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.06.48%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.07.39%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.08.16%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.08.46%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.14.00%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.14.21%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.14.54%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.19.36%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.20.01%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/refs/heads/main/screen_images/Screenshot%202025-08-20%20at%201.20.18%E2%80%AFPM.png",
      ],
      // liveDemoUrl: 'https://weatherapp.example.com',
      githubUrl: 'https://github.com/Vivekkurre1/meeting_sync',
      isWebProject: false,
    ),
    Project(
      name: 'Snake Game',
      logoUrl:
          'https://img.icons8.com/?size=100&id=KY71leRG66mL&format=png&color=000000',
      description: 'A classic snake game built with Flutter.',
      features: [
        'Classic snake gameplay',
        'Score tracking',
        'Responsive design',
      ],
      technologies: ['Flutter', 'Dart'],
      libraries: {
        'shared_preferences': 'https://pub.dev/packages/shared_preferences',
      },
      screenshots: [
        "https://raw.githubusercontent.com/Vivekkurre1/snake_game/refs/heads/main/screenshots/Screenshot%202025-08-20%20at%204.06.38%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/snake_game/refs/heads/main/screenshots/Screenshot%202025-08-20%20at%204.07.10%E2%80%AFPM.png",
        "https://raw.githubusercontent.com/Vivekkurre1/snake_game/refs/heads/main/screenshots/Screenshot%202025-08-20%20at%204.07.34%E2%80%AFPM.png",
      ],
      liveDemoUrl: null,
      githubUrl: 'https://github.com/Vivekkurre1/snake_game',
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
