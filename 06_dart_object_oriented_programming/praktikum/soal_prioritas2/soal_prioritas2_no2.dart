import 'course.dart';
import 'student.dart';

void main() {
  Course dart = Course();
  dart.judul = 'dart';
  dart.deskripsi = 'dart oop';

  Course flutter = Course();
  flutter.judul = 'flutter';
  flutter.deskripsi = 'flutter widget';

  Student student1 = Student();
  student1.nama = 'Gany';
  student1.kelas = 'Semester 5';

  student1.tambahCourse(dart);
  student1.tambahCourse(flutter);

  student1.tampilkanCourse();

  student1.hapusCourse(flutter);

  student1.tampilkanCourse();
}
