# RisingOS 17 Custom Source Tree & Local Manifest for Xiaomi Miatoll (sm6250)

مستودع البيان المحلي (Local Manifest) والتوثيق الشامل لكافة التعديلات والميزات المخصصة التي تم تطويرها وبناؤها لنظام **RisingOS 17** على أجهزة **Xiaomi Miatoll** (Redmi Note 9 Pro / Pro Max / 9S / Poco M2 Pro - `sm6250`).

---

## 📌 الفهرس / Table of Contents
1. [المستودعات المحدثة والمرفوعة / Uploaded Repositories](#-المستودعات-المحدثة-والمرفوعة--uploaded-repositories)
2. [أبرز التعديلات والمميزات المضافة / Custom Features & Fixes](#-أبرز-التعديلات-والمميزات-المضافة--custom-features--fixes)
3. [خطوات التنزيل والبناء / How to Sync & Build](#-خطوات-التنزيل-والبناء--how-to-sync--build)
4. [أوامر البناء المباشرة / Quick Build Commands](#-أوامر-البناء-المباشرة--quick-build-commands)

---

## 🚀 المستودعات المحدثة والمرفوعة / Uploaded Repositories

تم رفع كافة التعديلات إلى حساب GitHub الخاص بنا: [`@AbdoAhmedElbanaa`](https://github.com/AbdoAhmedElbanaa)

| المكون / Component | المسار / Path | الرابط / Repository Link | الفرع / Branch |
| :--- | :--- | :--- | :--- |
| **Device Tree** | `device/xiaomi/miatoll` | [rising_device_xiaomi_miatoll](https://github.com/AbdoAhmedElbanaa/rising_device_xiaomi_miatoll) | `Rising17Final` / `17` / `seventeen` |
| **Vendor Tree** | `vendor/xiaomi/miatoll` | [rising_vendor_xiaomi_miatoll](https://github.com/AbdoAhmedElbanaa/rising_vendor_xiaomi_miatoll) | `Rising17Final` / `17` / `seventeen` |
| **Kernel Source** | `kernel/xiaomi/sm6250` | [rising_kernel_xiaomi_sm6250](https://github.com/AbdoAhmedElbanaa/rising_kernel_xiaomi_sm6250) | `17` / `seventeen` / `Rising17Final` |
| **MIUI Camera Device** | `device/xiaomi/miuicamera-miatoll` | [android_device_xiaomi_miuicamera-miatoll](https://github.com/AbdoAhmedElbanaa/android_device_xiaomi_miuicamera-miatoll) | `17` / `seventeen` |
| **MIUI Camera Vendor** | `vendor/xiaomi/miuicamera-miatoll` | [leica-vendor_xiaomi_miuicamera-miatoll](https://github.com/AbdoAhmedElbanaa/leica-vendor_xiaomi_miuicamera-miatoll) | `17` / `seventeen` |
| **Frameworks Base** | `frameworks/base` | [android_frameworks_base-new](https://github.com/AbdoAhmedElbanaa/android_frameworks_base-new) | `seventeen` / `17` |
| **Settings** | `packages/apps/Settings` | [android_packages_apps_Settings](https://github.com/AbdoAhmedElbanaa/android_packages_apps_Settings) | `seventeen` / `17` |
| **Personalizations** | `packages/apps/Personalizations` | [android_packages_apps_Personalizations](https://github.com/AbdoAhmedElbanaa/android_packages_apps_Personalizations) | `seventeen` / `17` |
| **Vendor GMS** | `vendor/gms` | [android_vendor_gms](https://github.com/AbdoAhmedElbanaa/android_vendor_gms) | `seventeen` / `17` |
| **Vendor Lineage** | `vendor/lineage` | [android_vendor_lineage](https://github.com/AbdoAhmedElbanaa/android_vendor_lineage) | `seventeen` / `17` |
| **Build Soong** | `build/soong` | [android_build_soong](https://github.com/AbdoAhmedElbanaa/android_build_soong) | `seventeen` / `17` |
| **Hardware Interfaces** | `hardware/lineage/interfaces` | [android_hardware_lineage_interfaces](https://github.com/AbdoAhmedElbanaa/android_hardware_lineage_interfaces) | `seventeen` / `17` |
| **Lineage SDK** | `lineage-sdk` | [android_lineage-sdk](https://github.com/AbdoAhmedElbanaa/android_lineage-sdk) | `seventeen` / `17` |
| **LineageParts** | `packages/apps/LineageParts` | [android_packages_apps_LineageParts](https://github.com/AbdoAhmedElbanaa/android_packages_apps_LineageParts) | `seventeen` / `17` |
| **SEPolicy** | `device/lineage/sepolicy` | [android_device_lineage_sepolicy](https://github.com/AbdoAhmedElbanaa/android_device_lineage_sepolicy) | `seventeen` / `17` |
| **Frameworks AV** | `frameworks/av` | [android_frameworks_av](https://github.com/AbdoAhmedElbanaa/android_frameworks_av) | `seventeen` / `17` |
| **Official Devices** | `vendor/official_devices` | [official_devices](https://github.com/AbdoAhmedElbanaa/official_devices) | `seventeen` / `17` / `main` |

---

## 🛠️ أبرز التعديلات والمميزات المضافة / Custom Features & Fixes

### 1. الكيرنل و KernelSU / Kernel & SukiSU-Ultra Integration (`kernel/xiaomi/sm6250`)
- دمج دعم **SukiSU-Ultra / KernelSU Next** بالكامل داخل شجرة الكيرنل (In-tree).
- تعديل خطافات النظام اليدوية في `fs/exec.c`, `fs/open.c`, `fs/stat.c`, `fs/namespace.c`, `kernel/reboot.c`.
- تفعيل `CONFIG_KSU=y` و `CONFIG_KALLSYMS=y` في ملف إعدادات الكيرنل `miatoll_defconfig`.
- إصلاح توافق أدوات التوقيع `extract-cert.c` و `sign-file.c` مع OpenSSL 3 لتجنب أخطاء البناء.
- ضبط متغيرات `CLANG_FLAGS` و `export PATH` لضمان بناء سليم وسلس.

### 2. ميزات البصمة والوجه المتعدد / Multi-Face & Multi-Fingerprint (`frameworks/base` + `Settings`)
- دعم تسجيل أكثر من **20 بصمة إصبع** بدلاً من الحد الافتراضي (5).
- دعم تسجيل حتى **20 وجه** للفتح بالوجه مع دعم Dynamic Enrollment و API لتسمية وتعديل الوجوه المسجلة (`renameFace`).
- واجهة تحكم متطورة بالكامل في تطبيق الإعدادات `Settings` لإدارة وتسمية الوجوه المتعددة بسهولة.

### 3. إخفاء الروت وخيارات المطورين عن التطبيقات البنكية / Hide Developer Status & ADB
- إضافة ميزة **"Hide Developer Status"** في `Settings > Personalizations > Toolbox > Security`.
- تعديل `SettingsProvider` و `DeviceConfigUtils` لإخفاء حالة الـ ADB وتصحيح الأخطاء عن التطبيقات المحمية والمصرفية لضمان اجتياز فحص Play Integrity وحماية الخصوصية.

### 4. تخصيص إشعارات الفلاش / Flash Notifications Customization (`Settings`)
- إضافة لوحة تحكم كاملة في `FlashNotificationsScreen.kt` لتخصيص:
  - سرعة الوميض (`speed`)
  - التردد (`frequency`)
  - عدد النبضات (`pulse count`)
  - قوة السطوع (`strength`)
  - مدة التشغيل والإطفاء بالمللي ثانية (`on_ms`, `off_ms`)

### 5. ترجمة جوجل المباشرة والذكاء الاصطناعي / Pixel Live Translate & Pecan Engine
- تهيئة وتضمين حزم `pixel_live_translate` و `default-permissions-com.google.android.as` في `vendor/gms`.
- منح الصلاحيات اللازمة لـ `Private Compute Services` و `com.google.android.as` لتنزيل حزم اللغات بدون اتصال.
- إضافة إعدادات و Overlays محرك الذكاء الاصطناعي `Pecan` والشريط العائم في `vendor/lineage`.

### 6. كاميرا ومعرض شاومي لايكا / Leica MIUI Camera, Gallery & Editor
- دمج كاميرا شاومي لايكا مع دعم كامل لمكتبات ArcSoft 64-bit لإعادة التركيز وإضاءة البورتريه و `libOpenCL`.
- دمج تطبيقي `MIUIGallery` و `MIUIGalleryEditor` مع كافة مكتبات الذكاء الاصطناعي و JNI التابعة لهما.
- تقسيم الحزم الكبيرة لتتوافق مع معايير GitHub ودمجها تلقائياً عبر `vendorsetup.sh`.
- ضبط صلاحيات SELinux و Permissions لـ `platform_app_36`.

### 7. إصلاحات استقرار النظام والصوت / LiveDisplay & Audio Stability
- إصلاح خدمات `LiveDisplay AIDL` عبر إضافة حلول Fallback برمجية في `SDM` و `SysFS` لتفادي انهيار النظام على الشاشات التي لا تدعم تعديل الصور عتادياً.
- تعزيز وحماية `LineageHardwareManager` في `lineage-sdk` ضد أخطاء الـ HAL.
- إصلاح `EffectsFactory` و `AudioFlinger` في `frameworks/av` لضمان تشغيل Dolby Atmos والمؤثرات الصوتية دون انهيار خادم الصوت `audioserver`.

---

## 📥 خطوات التنزيل والبناء / How to Sync & Build

### 1. تهيئة الـ Repo الرئيسي / Initialize Repo
```bash
mkdir -p risingos && cd risingos
repo init -u https://github.com/RisingOS-Revived/android -b seventeen --git-lfs
```

### 2. إضافة مستودع التعديلات المحلي / Clone Local Manifest
```bash
git clone https://github.com/AbdoAhmedElbanaa/local_manifest.git -b seventeen .repo/local_manifests
```

### 3. مزامنة المصادر بالكامل / Full Repo Sync
```bash
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$(nproc --all)
```

---

## ⚡ أوامر البناء المباشرة / Quick Build Commands

### لبناء الروم بالكامل:
```bash
source build/envsetup.sh
riseup miatoll user
rise b
```

### لبناء تطبيق الإعدادات المحدث فقط:
```bash
source build/envsetup.sh
riseup miatoll user
m SettingsGoogle
```
