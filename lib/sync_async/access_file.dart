import 'dart:io';

void writeFile(File file){
  //  append  : adding data to the end of file
  //  write : erase and add data to file
  // \r is hard return and \n is new line
  // RandomAccessFile raf = file.openSync(mode: FileMode.write);
  RandomAccessFile raf = file.openSync(mode: FileMode.append);
  raf.writeStringSync('Halo dunia! \r\nhow Are you today?');
  raf.flushSync(); // buffer need to be clean from the sistem
  raf.closeSync(); //
}

void readFile(File file){
  if(!file.existsSync()){
    print('file not found!');
    return;
  }

  print('Reading string ...');
  print(file.readAsStringSync());

  print('Reading bytes ...');
  List values = file.readAsBytesSync();
  values.forEach((element) {
    print(element);
  });
}