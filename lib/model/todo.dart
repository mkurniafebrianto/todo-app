class ToDo {
  String? id;
  String? toDoText;
  bool? isDone;

  ToDo({
    required this.id,
    required this.toDoText,
    this.isDone = false,
  });

  static List<ToDo> toDoList() {
    return [
      ToDo(id: '01', toDoText: 'Membuat PPT presentasi', isDone: true),
      ToDo(id: '02', toDoText: 'Mengerjakan tugas matkul A'),
      ToDo(id: '03', toDoText: 'Bimbingan dengan dosen', isDone: true),
      ToDo(id: '04', toDoText: 'Latihan presentasi'),
      ToDo(id: '05', toDoText: 'Makan'),
      ToDo(id: '06', toDoText: 'Jogging'),
    ];
  }
}
