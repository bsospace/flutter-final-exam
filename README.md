# Get CLI - คำสั่งและการใช้งาน

`Get CLI` เป็นเครื่องมือที่ช่วยให้การพัฒนาแอปพลิเคชัน Flutter ด้วย GetX ง่ายขึ้น โดยสามารถสร้างโครงสร้างของโปรเจกต์, ควบคุมการทำงาน, และจัดการแพ็กเกจได้อย่างสะดวก

---

## การติดตั้ง Get CLI

```sh
pub global activate get_cli
```

> หลังจากติดตั้ง ให้เพิ่ม path ต่อไปนี้ลงใน `System PATH`:
> `[FlutterSDKInstallDir]\bin\cache\dart-sdk\bin`

```sh
flutter pub global activate get_cli
```

---

## คำสั่งสำหรับการสร้างโปรเจกต์

### สร้างโปรเจกต์ใหม่ในไดเรกทอรีปัจจุบัน
```sh
get create project
```
> คำสั่งนี้จะสร้างโปรเจกต์โดยใช้ชื่อเดียวกับโฟลเดอร์ปัจจุบัน

### กำหนดชื่อโปรเจกต์เอง
```sh
get create project:my_project
```
> หากชื่อมีช่องว่าง ให้ใช้เครื่องหมาย `""` เช่น:
```sh
get create project:"my cool project"
```

### ใช้โครงสร้าง GetX บนโปรเจกต์ที่มีอยู่แล้ว
```sh
get init
```

---

## คำสั่งสำหรับการสร้างไฟล์ต่าง ๆ

### สร้างหน้าใหม่ (Page)
```sh
get create page:home
```
> คำสั่งนี้จะสร้าง `Controller`, `View`, และ `Binding` สำหรับหน้า `home`

### สร้างหน้าจอ (Screen)
```sh
get create screen:home
```
> ใช้สำหรับโครงสร้าง CLEAN architecture (โดย Arktekko)

### สร้าง Controller ใหม่ในโฟลเดอร์ที่กำหนด
```sh
get create controller:dialogcontroller on home
```
> GetX จะค้นหาโฟลเดอร์ `home` และเพิ่ม Controller ลงไปที่นั่น

### สร้าง View ใหม่ในโฟลเดอร์ที่กำหนด
```sh
get create view:dialogview on home
```
> GetX จะค้นหาโฟลเดอร์ `home` และเพิ่ม View ลงไปที่นั่น

### สร้าง Provider ใหม่ในโฟลเดอร์ที่กำหนด
```sh
get create provider:user on home
```
> ใช้สำหรับสร้าง Provider เพื่อจัดการข้อมูลในแอปพลิเคชัน

---

## การสร้างไฟล์ Localization

### สร้างไฟล์แปลภาษาอัตโนมัติจาก JSON
```sh
get generate locales assets/locales
```
> GetX จะสร้างไฟล์ localization จากไฟล์ JSON ภายใน `assets/locales`

---

## การสร้าง Model

### สร้าง Model จากไฟล์ JSON
```sh
get generate model on home with assets/models/user.json
```
> GetX จะสร้าง class model จาก JSON และเพิ่มเข้าไปในโฟลเดอร์ `home`

### สร้าง Model โดยไม่ต้องใช้ Provider
```sh
get generate model on home with assets/models/user.json --skipProvider
```

### สร้าง Model จาก URL ที่คืนค่าเป็น JSON
```sh
get generate model on home from "https://api.github.com/users/CpdnCristiano"
```

---

## การจัดการแพ็กเกจ (Packages)

### ติดตั้งแพ็กเกจในโปรเจกต์
```sh
get install camera
```
> ติดตั้งแพ็กเกจ `camera` ในโปรเจกต์ปัจจุบัน

### ติดตั้งหลายแพ็กเกจพร้อมกัน
```sh
get install http path camera
```
> ติดตั้งแพ็กเกจ `http`, `path`, และ `camera`

### ติดตั้งแพ็กเกจพร้อมระบุเวอร์ชัน
```sh
get install path:1.6.4
```
> ติดตั้ง `path` เวอร์ชัน `1.6.4`

### ติดตั้งแพ็กเกจเฉพาะสำหรับ `dev_dependencies`
```sh
get install flutter_launcher_icons --dev
```
> ติดตั้ง `flutter_launcher_icons` เฉพาะใน `dev_dependencies`

### ลบแพ็กเกจออกจากโปรเจกต์
```sh
get remove http
```
> ลบแพ็กเกจ `http`

### ลบหลายแพ็กเกจพร้อมกัน
```sh
get remove http path
```
> ลบแพ็กเกจ `http` และ `path`

---

## การอัปเดตและตรวจสอบเวอร์ชัน

### อัปเดต Get CLI
```sh
get update
```
หรือ
```sh
get upgrade
```

### แสดงเวอร์ชันของ Get CLI
```sh
get -v
```
หรือ
```sh
get -version
```

---

## ขอความช่วยเหลือ
```sh
get help
```
> แสดงรายการคำสั่งทั้งหมดที่สามารถใช้ได้ใน Get CLI

## ต้องรัน flutter ด้วย คำสั่งจะสามารถเรียก api ได้
```sh
flutter run -d chrome --web-browser-flag "--disable-web-security"
```
