import 'dart:math';

void main() {
  Cleric cleric  = Cleric('홍길동');

  print('===== 클래릭 생성 =====');
  print('${cleric.hp}, ${cleric.mp}');

  for (int i = 0; i < 3; i++) {
    print('===== selfAid() 발동 $i =====');
    cleric.selfAid();
    print('${cleric.hp}, ${cleric.mp}');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = cleric.pray(second: 5);
    print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  }

}

class Cleric {
  String name;
  int hp = 10;
  int mp = 10;
  final maxHp = 50;
  final maxMp = 10;

  Cleric(this.name);

  void selfAid() {
    if (this.mp < 5) {
      print('MP가 부족합니다.');
    } else if (this.hp == this.maxHp) {
      print('이미 체력이 가득 찼습니다.');
    } else {
      this.hp = this.maxHp;
      this.mp -= 5;
      print('HP가 모두 회복되었습니다.');
    }
  }

  int pray({int second = 1}) {
    int chargedMp = second + Random().nextInt(3);

    if (this.mp + chargedMp > this.maxMp) {
      chargedMp = this.maxMp - this.mp;
    }

    this.mp += chargedMp;

    return chargedMp;

  }
}
