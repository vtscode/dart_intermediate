import 'dart:io';

void DartIOSync() {
  String path = '/';
  Directory dir = new Directory(path);

  /*
  * io = synchronous and async
  * synchronous = happen upon a time
  * */
  if(dir.existsSync()){
    print('exists');
  }
  else{
    print('not found');
  }

  //system temp dir
  Directory dir2 = Directory.systemTemp.createTempSync('asd');

  print(dir2.path);
  if(dir2.existsSync()){
    print('Removing ${dir2.path}');
    dir2.deleteSync();
  }
  else{
    print('Could no find ${dir2.path}');
  }

  // listing items in directory
  Directory dir3 = Directory.current;
  print(dir3.path);

  List<FileSystemEntity> lists = dir3.listSync(recursive: true);
  print('Entries in list : ${lists.length}');

  lists.forEach((FileSystemEntity element) {
    FileStat stat = element.statSync();
    print('Type : ${stat.type}');
    print('Changed : ${stat.changed}');
    print('Modify : ${stat.modified}');
    print('Accessed : ${stat.accessed}');
    print('Mode : ${stat.mode}');
    print('Size : ${stat.size}');
    print('');
  });
}