part of 'scenario.dart';

enum TRPGSystem {
  mm(
    id: 1,
    name: 'マーダーミステリー',
    abbr: 'マダミス',
    color: Color(0xFFffbf7f),
  ),
  coc6(
    id: 2,
    name: 'クトゥルフ神話',
    abbr: 'CoC6',
    color: Color(0xFFff7fff),
  ),
  coc7(
    id: 3,
    name: '新クトゥルフ神話',
    abbr: 'CoC7',
    color: Color(0xFFbf7fff),
  ),
  ek(
    id: 4,
    name: 'エモクロア',
    abbr: 'エモクロア',
    color: Color(0xFF7f7fff),
  ),
  sw20(
    id: 5,
    name: 'ソード・ワールド2.0',
    abbr: 'SW2.0',
    color: Color(0xFFbfff7f),
  ),
  sw25(
    id: 6,
    name: 'ソード・ワールド2.5',
    abbr: 'SW2.5',
    color: Color(0xFFffff7f),
  ),
  shinobi(
    id: 7,
    name: 'シノビガミ',
    abbr: 'シノビガミ',
    color: Color(0xFF404040),
  ),
  dx3rd(
    id: 8,
    name: 'ダブルクロス3rd',
    abbr: 'DX3',
    color: Color(0xFF7fffbf),
  ),
  dd(
    id: 9,
    name: 'ダンジョンズ＆ドラゴンズ',
    abbr: 'D&D',
    color: Color(0xFFff7f7f),
  ),
  other(
    id: 0,
    name: 'その他',
    abbr: 'その他',
    color: Color(0xFFc0c0c0),
  );

  const TRPGSystem({
    required this.id,
    required this.name,
    required this.abbr,
    required this.color,
  });

  final int id;
  final String name;
  final String abbr;
  final Color color;
}
