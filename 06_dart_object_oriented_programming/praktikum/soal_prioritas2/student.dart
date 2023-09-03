import 'course.dart';

class Student extends Course {
  String? nama;
  String? kelas;
  List<Course> daftarCourse = [];

  void tambahCourse(Course course) {
    daftarCourse.add(course);
  }

  void hapusCourse(Course course) {
    daftarCourse.remove(course);
  }

  void tampilkanCourse() {
    if (daftarCourse.isEmpty) {
      print('${nama} belum memiliki course');
    } else {
      print('${nama} course : ');
      for (var course in daftarCourse) {
        print('Judul : ${course.judul}');
        print('Deskripsi : ${course.deskripsi}\n');
      }
    }
  }
}
