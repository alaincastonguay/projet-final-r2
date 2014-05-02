library educ_memory_game;

import 'dart:html';
import 'dart:async';
import 'dart:math';

part 'model/cell.dart';
part 'model/memory.dart';
part 'view/board.dart';
part 'util/images.dart';
part 'util/random.dart';

void main() {
  var cellsNumber = 6;
  var canvasSize = cellsNumber * 80;
  
  ButtonElement play = querySelector('#play');
  CanvasElement canvas = querySelector('#canvas');
  play.onClick.listen((Event e) {
    window.location.reload();
  });
  canvas.height = canvasSize;
  canvas.width = canvasSize;
  new Board(canvas, new Memory(cellsNumber));
  
}




