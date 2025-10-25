import 'package:vivek_portfolio/data/models/achivement.dart';
import 'package:vivek_portfolio/data/models/experience.dart';

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
  ];
  static List<Experience> experiences = [
    Experience(
      companyName: 'Quichub Innovation LLP',
      designation: 'Software Developer',
      startDate: DateTime(2023, 9),
      endDate: DateTime(2025, 1),
      employmentType: EmploymentType.fullTime,
      companyLogoUrl:
          "https://res.cloudinary.com/dnjeaojih/image/upload/v1759483802/quichub_c2tcuo.jpg",
      companyWebsite: "https://quichub.com/",
      socialLinks: {
        "LinkedIn": "https://www.linkedin.com/company/quichub-innovations/",
      },
      techStack: [
        "Flutter",
        "Dart",
        "gRPC",
        "GraphQL",
        "MongoDB",
        "Golang",
        "PostgreSQL",
        "React Js",
        "Git",
        "GitHub",
        "Azure DevOps",
      ],
      projects: [
        ProjectExperience(
          name: "QuicShop SELLER ",
          appOrWebLink:
              "https://play.google.com/store/apps/details?id=com.quichub.seller&pcampaignid=web_share",
          screenshots: [
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409011/quicseller_screen_1_eqbes8.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_2_e5l7ej.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_3_t6ef8w.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_4_jqok8s.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_5_iyflym.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_6_vluekn.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_7_wxewj1.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_8_zlt0xy.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_9_i8todw.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_10_srr8bq.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_11_zyq6tf.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_12_fjscli.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_13_zj23ma.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_14_fucxxn.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_15_cboiow.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_16_jhoq8r.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_17_czdc0b.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_18_g1luph.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_19_udijfg.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_20_rocs8k.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_21_j5015w.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_22_wose2c.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_23_hszswv.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_24_phcr7c.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_25_da8ebp.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409012/quicseller_screen_26_fpkhga.jpg",
          ],
          summary:
              "Developed an all-in-one retail and service sales platform unifying in-store PoS with online ordering, CRM, and automated digital invoicing.",
          features: [
            "Unified Point of Sale & Online Store integration—real-time inventory and sales sync across channels",
            "Simplified catalog management with single synchronized product catalog, global inventory control, secure staff PINs, and unified analytics",
            "Product and collection management: add via barcode or manually, curate with tags/categories, control product and offer display",
            "Instant digital invoicing: create, itemize, and share via WhatsApp/email in seconds",
            "Automated reminders for pending payments to accelerate collections",
            "Centralized customer management (CRM) for notes, service history, and follow-ups",
            "Flexible payment modes: UPI, cards, cash, Buy Now Pay Later",
            "Staff role assignment, tracking, and delivery management",
            "Video guid of the app and its features",
            "Fully mobile workflow: manage business anywhere from your phone",
          ],
          libraries: {
            'flutter_local_notifications':
                'https://pub.dev/packages/flutter_local_notifications',
            'flutter_riverpod': 'https://pub.dev/packages/flutter_riverpod',
            'graphql_flutter': 'https://pub.dev/packages/graphql_flutter',
            'http': 'https://pub.dev/packages/http',
            'timeago': 'https://pub.dev/packages/timeago',
            'image_picker': 'https://pub.dev/packages/image_picker',
            'flutter_image_compress':
                'https://pub.dev/packages/flutter_image_compress',
            'image_cropper': 'https://pub.dev/packages/image_cropper',
            'path_provider': 'https://pub.dev/packages/path_provider',
            'url_launcher': 'https://pub.dev/packages/url_launcher',
            'uuid': 'https://pub.dev/packages/uuid',
            'audioplayers': 'https://pub.dev/packages/audioplayers',
            'shared_preferences': 'https://pub.dev/packages/shared_preferences',
            'qr_flutter': 'https://pub.dev/packages/qr_flutter',
            'universal_html': 'https://pub.dev/packages/universal_html',
            'pdf': 'https://pub.dev/packages/pdf',
            'open_file': 'https://pub.dev/packages/open_file',
            'flutter_rating_bar': 'https://pub.dev/packages/flutter_rating_bar',
          },
        ),
        ProjectExperience(
          name: "Quicshop",
          appOrWebLink:
              "https://play.google.com/store/apps/details?id=com.quicshop.consumer&pcampaignid=web_share",
          screenshots: [
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409023/quicshop_screen_1_xeoyxw.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409023/quicshop_screen_2_di163j.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409023/quicshop_screen_3_kfkns6.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409023/quicshop_screen_4_c2ab3f.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409023/quicshop_screen_5_t3esvk.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409023/quicshop_screen_6_d9tjhd.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409023/quicshop_screen_7_su4ov4.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409023/quicshop_screen_8_hnugqn.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409023/quicshop_screen_9_xtyzfx.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409023/quicshop_screen_11_jxcqvg.jpg",
            "https://res.cloudinary.com/dnjeaojih/image/upload/v1761409023/quicshop_screen_11_jxcqvg.jpg",
          ],
          summary:
              "Developed and enhanced customer-facing app for real-time local shop discovery, product ordering, and seamless checkout with robust status updates and notifications.",
          features: [
            "Location-based shop discovery for instant area relevant shopping",
            "Enhanced product selection and cart with improved UI/UX",
            "Flexible checkout: Dine-in, Take-away, and Delivery options",
            "Payment gateway and Pay Later flow robustly tested and fixed, checkout reliability improved",
            "Order and order tracking with dynamic status updates",
            "Notification services for order, payment, and offers",
            "Critical bug fixes and UI enhancements across cart and checkout flows",
          ],
          libraries: {
            'url_launcher': 'https://pub.dev/packages/url_launcher',
            'grpc': 'https://pub.dev/packages/grpc',
            'protobuf': 'https://pub.dev/packages/protobuf',
            'async': 'https://pub.dev/packages/async',
            'http': 'https://pub.dev/packages/http',
            'intl': 'https://pub.dev/packages/intl',
            'location': 'https://pub.dev/packages/location',
            'flutter_riverpod': 'https://pub.dev/packages/flutter_riverpod',
            'riverpod_lints': 'https://pub.dev/packages/riverpod_lints',
            'flutter_rating_bar': 'https://pub.dev/packages/flutter_rating_bar',
            'razorpay_web': 'https://pub.dev/packages/razorpay_web',
            'shared_preferences': 'https://pub.dev/packages/shared_preferences',
          },
        ),
      ],
    ),
    Experience(
      companyName: 'Multi CRM',
      designation: 'Flutter Engineer',
      startDate: DateTime(2025, 4),
      endDate: DateTime(2022, 7),
      employmentType: EmploymentType.partTime,
      companyLogoUrl:
          "https://res.cloudinary.com/dnjeaojih/image/upload/v1759483802/multicrm_dcu7k6.webp",
      companyWebsite: "https://mentorseries.in/",
      socialLinks: {
        // "LinkedIn": "https://linkedin.com/company/codeaffairs",
        // "GitHub": "https://github.com/codeaffairs",
      },
      techStack: ["Flutter", "Dart", "REST API", "Git", "GitHub"],
      projects: [
        ProjectExperience(
          name: "Multi CRM - Bulk Sender",
          appOrWebLink:
              "https://play.google.com/store/apps/details?id=com.app.multicrm&pcampaignid=web_share",
          screenshots: [
            "https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/screenshots/Screenshot%202025-10-01%20at%2012.04.40%E2%80%AFPM.png",
            "https://raw.githubusercontent.com/Vivekkurre1/do_chat/refs/heads/main/screenshots/Screenshot%202025-10-01%20at%2012.01.19%E2%80%AFPM.png",
          ],
          summary:
              "Developed WhatsApp automation and bulk messaging features for streamlined business communication.",
          features: [
            // One-line bug/fix/issue summary as first feature
            "Resolved all major bugs and reliability issues in automation, campaign, call logs, and device management for strong platform stability.",

            // Headline + features block
            "Automation Flows: Welcome, Subscribe, and Unsubscribe message automation for WhatsApp users",
            "Contact Import: Excel/CSV upload, WhatsApp Groups/Chats sync, phonebook/manual entry",
            "Chatbot Flow Builder: Visual, drag-and-drop automation logic & unified inbox with tagging and threaded replies",
            "Digital Store Integration: In-app store, product listing, order & payment (via WhatsApp) automation",
            "Reports/Reminders: Migrated legacy 'Report' to Reminders, Google Play Referral API integration, and automated follow-ups",
          ],
          libraries: {
            'get': 'https://pub.dev/packages/get',
            'country_code_picker':
                'https://pub.dev/packages/country_code_picker',
            'permission_handler': 'https://pub.dev/packages/permission_handler',
            'android_play_install_referrer':
                'https://pub.dev/packages/android_play_install_referrer',
            'flutter_contacts': 'https://pub.dev/packages/flutter_contacts',
            'flutter_branch_sdk': 'https://pub.dev/packages/flutter_branch_sdk',
            "excel": 'https://pub.dev/packages/excel',
            'csv': 'https://pub.dev/packages/csv',
            'pdf': 'https://pub.dev/packages/pdf',
            'dropdown_button2': 'https://pub.dev/packages/dropdown_button2',
            'carousel_slider': 'https://pub.dev/packages/carousel_slider',
            'http': 'https://pub.dev/packages/http',
            'intl': 'https://pub.dev/packages/intl',
            'image_picker': 'https://pub.dev/packages/image_picker',
            'file_picker': 'https://pub.dev/packages/file_picker',
          },
        ),
      ],
    ),
  ];
}
