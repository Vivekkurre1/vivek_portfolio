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
      name: 'Flutter Portfolio',
      logoUrl:
          'https://img.icons8.com/?size=100&id=7I3BjCqe9rjG&format=png&color=000000',
      description:
          'A beautiful portfolio app showcasing my projects and achievements.',
      features: const [
        'Responsive UI',
        'Dark mode support',
        'Smooth animations',
      ],
      technologies: const ['Flutter', 'Dart', 'Firebase'],
      libraries: const {
        'url_launcher': 'https://pub.dev/packages/url_launcher',
        'flutter_bloc': 'https://pub.dev/packages/flutter_bloc',
      },
      screenshots: const [
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.06.48%E2%80%AFPM.png",
        'https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.05.00%E2%80%AFPM.png',
        // "https://github.com/Vivekkurre1/meeting_sync/blob/main/screen_images/Screenshot%202025-08-20%20at%201.04.34%E2%80%AFPM.png?raw=true",
        "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.06.48%E2%80%AFPM.png",
        'https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.05.00%E2%80%AFPM.png',
      ],
      liveDemoUrl: 'https://yourportfolio.com',
      githubUrl: 'https://github.com/yourusername/flutter-portfolio',
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
        // "https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.06.48%E2%80%AFPM.png",
        // 'https://raw.githubusercontent.com/Vivekkurre1/meeting_sync/2ff6be88503439225716fba9f1720c1a2e9a628e/screen_images/Screenshot%202025-08-20%20at%201.05.00%E2%80%AFPM.png',
      ],
      liveDemoUrl: 'https://chatapp.example.com',
      githubUrl: 'https://github.com/yourusername/chat-app',
      isWebProject: true,
    ),
  ];

  // static const List<Project> projects = [
  //   Project(
  //     name: 'Live score',
  //     imageUrl:
  //         'https://drive.google.com/uc?id=1ITN6reINiIaM-6j3QqxrwtvADZgLNvwB',
  //     description:
  //         'A football application to display all related matches and rankings in all international and local tournaments',
  //     githubRepoLink: 'https://github.com/radyhaggag/live_score',
  //     previewLink: 'https://youtu.be/HSIosFd6Sys',
  //   ),
  //   Project(
  //     name: 'Instagram clone',
  //     imageUrl:
  //         'https://drive.google.com/uc?id=1qNFCNYdUo7o36ythQtjaSrv7L0NV_Vnv',
  //     description:
  //         'Social media application for share posts and stories with people, One-to-one chat, Share reels videos',
  //     githubRepoLink:
  //         'https://github.com/radyhaggag/Instagram-Clone-With-Clean-Architecture',
  //     previewLink: 'https://youtu.be/MuuVjqrR49g',
  //   ),
  //   Project(
  //     name: 'TikTok Downloader',
  //     imageUrl:
  //         'https://drive.google.com/uc?id=1SypuIPVdokg0O4DYoYdswRowlIJAGgIq',
  //     description:
  //         'An application for download videos from tiktok and save it to gallery.',
  //     githubRepoLink: 'https://github.com/radyhaggag/tiktok_downloader',
  //     previewLink: 'https://youtu.be/mWeA625pcrI',
  //   ),
  //   Project(
  //     name: 'Bookly',
  //     imageUrl:
  //         'https://drive.google.com/uc?id=1yQtoq-wjVejWPXRI7gzGMXPUZrRob8kY',
  //     description: 'An application to explore books and view their details.',
  //     githubRepoLink:
  //         'https://github.com/radyhaggag/bookly_app_with_mvvm_and_bloc',
  //     previewLink: 'https://youtu.be/3nU_dYjsPsg',
  //   ),
  //   Project(
  //     name: 'Image processing',
  //     imageUrl:
  //         'https://drive.google.com/uc?id=1hd7U3HgoDqXEi9eDKYjrY9iqlWa6qt8E',
  //     description:
  //         'An Desktop program for process images and apply some filters to them.',
  //     githubRepoLink:
  //         'https://github.com/radyhaggag/image_processing_program_with_python_flet',
  //     previewLink: 'https://youtu.be/s1KFdBKNFig',
  //   ),
  //   Project(
  //     name: 'Salat al janazah',
  //     imageUrl:
  //         'https://drive.google.com/uc?id=1UpCGckOS46GdTuHU4wuj7Abo_97gxe_E',
  //     description:
  //         'An application for add janazah prayer and view the prayers for nearby people',
  //     googlePlay:
  //         'https://play.google.com/store/apps/details?id=com.SJY.salataljanaza',
  //     previewLink: 'https://youtu.be/wK9Y9BhP190',
  //   ),
  //   Project(
  //     name: 'Ghaslah',
  //     imageUrl:
  //         'https://drive.google.com/uc?id=1ed4H2-cH6yk_kVkDdxOLcUkgP1xpuo72',
  //     description:
  //         'An application for add wash cars reservation with location in map and the picker will come to wash the cars',
  //     previewLink: 'https://youtu.be/gkeRSAfCZaI',
  //   ),
  //   Project(
  //     name: 'Zawilan',
  //     imageUrl:
  //         'https://drive.google.com/uc?id=1ElTwguynMLqhS295-IE7bTTabsZGZp8s',
  //     description:
  //         'Zwailan is an education app based on units and sections system, you start by sign up on app and wait until the teacher accept your join request.',
  //     previewLink: 'https://youtu.be/g92W-SmfkKc',
  //     googlePlay:
  //         'https://play.google.com/store/apps/details?id=com.radyhaggag.zawilan',
  //   ),
  // ];
}
