library educ_memory_game;

import 'dart:html';
import 'dart:async';
import 'dart:math';

part 'model/cell.dart';
part 'model/memory.dart';
part 'view/board.dart';
part 'util/images.dart';
part 'util/random.dart';

//Following include modifications by Alain Castonguay and Marie-Helene Dore
void main() {
  var cellsNumber1 = 4; var cellsNumber2 = 6; 
  var canvasSize1 = cellsNumber1 * 80; var canvasSize2 = cellsNumber2 * 80;
  
  CanvasElement canvas = querySelector('#canvas');
 
  ButtonElement play1 = querySelector('#play1');
  play1.onClick.listen((Event e) {
    canvas.height = canvasSize1;
    canvas.width = canvasSize1;
    new Board(canvas, new Memory(cellsNumber1));
  });
 
  ButtonElement play2 = querySelector('#play2');
  play2.onClick.listen((Event e) {
    canvas.height = canvasSize2;
    canvas.width = canvasSize2;
    new Board(canvas, new Memory(cellsNumber2));
  });
    
  ButtonElement play = querySelector('#play');
  play.onClick.listen((Event e) {
    window.location.reload();
  });
  
}





