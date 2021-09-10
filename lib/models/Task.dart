class Task{
  String name;
  bool isDone =false;

  Task(this.name,this.isDone);

  bool toggle(){
    isDone = !isDone;
    return isDone;
  }
}