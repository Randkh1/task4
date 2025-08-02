
# Task 4 - Robot Arm Control Panel

## 👩‍💻 اسم الطالبة:
**Rand Alkhlifh**

---

## 📌 وصف المهمة:

بناء نظام تحكم بذراع آلي يتكوّن من:
- تطبيق Flutter للتحكم في الذراع (4 محركات)
- واجهة تحتوي على أزرار للتحكم (Reset, Save, Run)
- تخزين الوضعيات في قاعدة بيانات MySQL
- استخدام ملفات PHP كوسيط بين التطبيق وقاعدة البيانات

---

## 🛠️ الأدوات المستخدمة:
- **Flutter** لواجهة المستخدم
- **PHP** لبرمجة الواجهة الخلفية (API)
- **MySQL** لقاعدة البيانات
- **XAMPP** لتشغيل Apache + MySQL محليًا
- **GitHub** لحفظ المشروع ومشاركته

---

## 📱 واجهة Flutter:

- **4 منزلقات (Sliders)** لتمثيل كل محرك (Motor 1 إلى Motor 4)
- **3 أزرار تحكم**:
  - Reset: لإعادة الوضع الابتدائي
  - Save Pose: لحفظ الوضعية الحالية
  - Run: لتشغيل الوضعية

---

## 🗃️ قاعدة البيانات:

### الجداول المستخدمة:

```sql
CREATE TABLE poses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    motor1 INT,
    motor2 INT,
    motor3 INT,
    motor4 INT
);

CREATE TABLE status (
    id INT AUTO_INCREMENT PRIMARY KEY,
    is_running INT
);
