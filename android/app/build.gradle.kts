plugins {
    id("com.android.application")
    id("kotlin-android")

    // 🔴 REQUIRED FOR FIREBASE (processes google-services.json)
    id("com.google.gms.google-services")

    // 🔴 Flutter Gradle Plugin MUST be last
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.facebook_clone"

    // 🔴 Required by Firebase & flutter_secure_storage
    compileSdk = 36
    ndkVersion = "27.1.12297006"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.facebook_clone"

        // 🔴 Firebase minimum requirement is 21+
        minSdk = 24
        targetSdk = 36

        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // ⚠️ Debug signing ONLY for testing
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
