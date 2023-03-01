void main() { // Dart는 필히 main()을 찾아다닌다

  /*VARIABLES*/
  print('Hello World in Dart'); // cascade operation 때문에 세미콜론 붙이는게 필수

  var name = 'cassia'; // 함수나 메소드 내부 로컬변수

  String name2 = 'cass'; // 클래스 변수나 property

  dynamic name3; // 변수가 어떤 타입이 될지 모르는 경우가 생길 때 dynamic 선언이 유효할 수 있음
  name3 = 'coco';
  name3 = 34;
  name3 = true;
  if(name3 is int) {
    print('name3 is $name3 an int');
  }else if(name3 is String) {
    print('name3 is $name3 a String');
  }else {
    print('name3 is $name3 and what is its type?');
  }

  String? name4 = 'cass'; // Null이 될 수도 있는 값에 물음표 첨가. 물음표 없으면 dart의 null-safety로서 기본적으로 nullable이 아님
  name4 = null;
  if(name4 != null) {
    name4.isNotEmpty;
  }
  name4?.isNotEmpty; // 바로 위의 조건문을 물음표 첨가로 간략화
  name4?.isEmpty; //name4가 null이 아니라면 isEmpty든 isNotEmpty든 호출 가능

  final name5 = 'cass'; // Dart의 final은 Javascript와 Typescript의 const와 흡사. 값의 할당은 딱 한 번만 가능. runtime 중에 변수 생성
  final String name6 = 'cass'; // final로 선언된 변수에 대해 타입 지정도 가능하긴 한데 필수는 아님

  late final String name7;// final이나 var이나 데이터타입 앞에 붙여줄 수 있는 수식어, 초기 데이터 없는 변수 선언이 가능. 값을 넣기 전에는 접근 안 함
  name7 = 'cass'; // 나중에 API에서 데이터를 받아 값으로 넣어줄 수 있음. flutter에서 data fetching에 매우 유리

  const name8 = 'cass';// compile-time부터 값을 알고 있는 상수를 만듦. Javascript나 Typescript의 const와는 다름.


  /*DATA TYPES*/
  String name10 = 'cass';
  bool alive = true;
  int age = 12; // int는 num을 상속받은 클래스
  double money = 69.99; // double도 num을 상속받은 클래스
  num x = 1.1;
  num y = 23;
  print(age.isOdd); // x.isOdd랑 y.isOdd는 The getter 'isOdd' isn't defined for the class 'num'.이라서 안 먹힘

  var numbersExample = [1, 2, 3, 4,]; // 실제 자료형은 List<int> numbers. 맨 뒤에도 쉼표 넣어도 됨
  numbersExample.add(5); // numbers.first; numbers.last; numbers.clear(); numbers.contains(6); 그 밖에 여러 함수 활용할 것

  var giveMeFive = true;
  var numbers = [ // Dart의 List는 대괄호(square bracket) 안에 원소들을 넣는 형태로 생성함
    1,
    2,
    3,
    4,
    if(giveMeFive) 5, // numbers.add(5)랑 같음. Dart의 Collection If의 편리성
  ];
  print(numbers);

  var name11 = 'cass';
  var age2 = 14;
  // String interpolation(文字列補間). 연산 작업을 할 때는 중괄호(curly bracket)이 필요함
  // 문자열을 작은따옴표르 감쌌을 때에는, 감싸이지 않는 작은따옴표의 표기를 위해선 이스케이프 문자를 넣으면 됨
  var greeting = 'Helo everyone, my name is $name11 and I\'m ${age2 + 1} years old.';
  print(greeting);

  var oldFriends = ['cass', 'hite',];
  var newFriends = [
    'asahi',
    'sapporo',
    'kirin',
    for(var friend in oldFriends) '💖$friend', // newFriends.add()와 같음. Dart의 Collection For의 편리성
  ];
  print(newFriends);

  // Map은 JavaScript나 TypeScript의 object, Python의 dictionary와 비슷함
  var player = { // 자료형은 Map<String, Object> player로 유추됨. Dart의 Object는 TypeScript의 any와 같음
    'name': 'cass',
    'xp': 19.99,
    'superpower': false,
  };

  Map<int, bool> player2 = { // key와 value의 자료형을 지정할 수도 있음
    1: true,
    2: false,
    3: true
  };

  Map<List<int>, bool> player3 = { // List도 넣어줄 수 있음
    [1, 2, 3, 5]: true,
    [4, 6, 8, 7]: false,
  };

  List<Map<String, Object>> players4 = [ // Map을 포함하는 List도 만들 수 있음
    {'name': 'cass', 'xp': '99.99'},
    {'name': 'hite', 'xp': '84.95'},
  ];
  // 다만 정말로 JavaScript나 TypeScript의 object, Python의 dictionary 같이 key와 value로 이루어진 구조를 걸 구현하려면
  // 특히 API구조의 데이터를 다룬다면 차라리 Dart의 class를 사용하자

  var numbers2 = {1, 2, 3, 4}; // Dart에서 Set은 그냥 중괄호 안에 원소들을 넣는 식으로 생성. Python의 Tuple과 비슷함
  var numbers3 = {1, 2, 3, 4, 5, 5, 5, 6}; // Set 내의 각 요소는 반드시 유일하므로 값이 중복되는 원소는 한 번만 세짐
  print(numbers3);


  /*FUNCTIONS*/
  print(sayHello('cass'));
  print(sayHelloFatArrowSyntax('cassFawArrow'));
  print(plus(3, 4));

  // print(sayHello2('cass', 34, 'Korea')); // Positioned argument로는 알아보기 편하지 않으므로 named argument로 대체
  print(sayHello2(
      age: 23,  // 파라미터의 순서는 상관없음
      name: 'cass',
      country: 'Korea'
  ));

  print(sayHello3(
    country: 'Korea',
    age: 24,
    name: 'cass',
  ));

  // Optional positional parameter 적용
  print(sayHello4('cass', 12));

  // QQ operator a.k.a null-aware operator
  print(capitalizeName('cass'));
  print(capitalizeName(null));
  print(capitalizeName2('cass'));
  print(capitalizeName2(null));

  // QQ equals
  // name이 null이라면 cass라는 값을 할당해달라는 뜻
  String? name12;
  name12 ??= 'cass';
  name12 ??= 'another'; // 윗줄에서 값이 할당됐기 때문에 another로 출력되는 일은 없다는 Warning 표시
  print(name12);
  name12 = null;
  name12 ??= 'another';
  print(name12);

  // typedef 확인
  print(reverseListOfNumbers([1, 2, 3]));
  print(sayHi({"name" : 'cass'}));
  print(sayHi({"name2" : 'cass2'}));  // userInfo에 name2라는 key가 없기 때문에 null 출력


  /*CLASSES*/
  var player5 = Player();
  print(player5.name);
  player5.name = '라라라';
  print(player5.name);
  print(player5.name2);
//   player5.name2 = '리리리';  // final로 선언해 준 variable, property 값 변경은 불가
  player5.name = 'cassAgain';
  player5.sayHello();
  player5.sayHello2();

  var player6 = Player2('cass', 2000);
  player6.sayHello();
  var player7 = Player2('cass2', 2200);
  player7.sayHello();

  var player8 = Player3('casscass', 3300);
  player8.sayHello();

  var player9 = Player4(
      name: 'casscass2',
      xp: 5500,
      team: 'red',
      age: 23);
  player9.sayHello();

  // 원하는 원소만 값을 할당하는 Named constructors를 활용
  var player10 = Player5.createBluePlayer(
    name: 'cassdoe',
    age: 22,
  );
  player10.sayHello();
  var player11 = Player5.createRedPlayer('cassdoedoe', 23);
  player11.sayHello();

  // API에서 다량의 데이터를 가져온다는 가정 상황에서 constructor 활용하기(Player5 클래스 활용)
  var apiData = [
    {
      'name': 'cass',
      'team': 'red',
      'xp': 0,
      'age': 33,
    },
    {
      'name': 'hite',
      'team': 'red',
      'xp': 0,
      'age': 35,
    },
    {
      'name': 'sapporo',
      'team': 'red',
      'xp': 0,
      'age': 14
    }
  ];
  apiData.forEach((playerJson) {
    var player = Player5.fromJson(playerJson);
    player.sayHello();
  });

  // Cascade Notation
  var cass = Player6(name: 'cass', xp: 2200, team: 'red', age: 33)  // 세미콜론 붙이지 않아도 됨
    ..name = 'casscass' // Cascade operator ..를 사용
    ..xp = 1200
    ..team = 'blue'
    ..sayHello(); // 이 인스턴스와 관련된 작업 마지막에만 세미콜론을 붙이면 됨

  var casscass = Player6(name: 'cass', xp: 2200, team: 'red', age: 33);
  var casscass2 = cass  // 중건애 인스턴스 관련 다른 변수의 선언이 있으면 위에 생성자 선언 때 세미콜론 붙여야 함
    ..name = 'casscass' // Cascade operator ..를 사용
    ..xp = 1200
    ..team = 'blue'; // 이 인스턴스와 관련된 작업 마지막에만 세미콜론을 붙이면 됨

  // Enums
  var cass3 = Player7(name: 'cass', xp: XPLevel.medium, age: 22, team: Team.blue.name);
  var potato = cass3
    ..name = 'potato'
    ..xp = XPLevel.professional // 이러면 sayHello() 출력도 XPLevel.Professional로 그대로 출력됨
    ..team = Team.red.name  // 값만 출력되려면 .name이 추가로 필요함
    ..sayHello();

  // Abstract Classes
  var player12 = Player8(name: 'cass', xp: XPLevel.medium.name, age: 22, team: Team.blue.name)
    ..walk()
    ..sayHello();
  var coach = Coach()
    ..walk();

  // Inheritance
  var cass4 = Player9(team: Team.red, name: 'cass')
    ..sayHi();
  var cass5 = Player10(team: Team.blue, name: 'casscass')
    ..sayHi();
}

String sayHello(String name) {
  return ("Hello $name nice to meet you!");
}

// 코드 한 줄짜리 function에 대해서는 fat arrow syntax를 쓰는 것이 유효함
String sayHelloFatArrowSyntax(String name) => ('Hello $name I am using fat arrow syntax');
num plus(num a, num b) => a + b;

// Named Parameters를 유효하게 하려면 함수 선언에서 파라미터를 중괄호로 묶고, 각 파라미터에 물음표를 넣든가 default value를 추가해야 함
// 역으로 파라미터가 선언된 순서대로 나열하는 식의 호출이 불가능해짐
String sayHello2({String name = 'none', int age = 0, String country = 'none'}) {
// String sayHello2({String? name, int? age, String? country}) {
  return "Hello $name, you are $age years old and you come from $country";
}

// Named Parameter에 required 수식자를 붙여 API 등으로 부터 반드시 받아야함을 나타낼 수 있음
String sayHello3({required String name, required int age, required String country}) {
  return "Hello $name, you are $age years old and you come from $country";
}

// Optional positional parameter 지정은 해당 파라미터를 대괄호로 감쌈으로써 지정
// Default value 지정 안 하면 null이 출력됨
String sayHello4(String name, int age, [String? country = 'Barbados']) =>
    'Hello $name, you are $age years old who comes from $country';

// ternary operator ?와 :을 사용하여, null일 경우 anon을 반환시킴
String capitalizeName(String? name) => name != null ? name.toUpperCase() : 'anon';

// 위의 함수 선언을 훨씬 더 간소화시킨 게 QQ(Question x2) operator로, 좌항 ?? 우항으로 써서 좌항이 null이면 우항을 반환
// 다만 좌항 파라미터에 물음표는 붙여줘야 함
String capitalizeName2(String? name) => name?.toUpperCase() ?? 'anon';

// typedef는 간단한 자료형에 alias를 붙일 수 있게 함
typedef ListOfInts = List<int>;
ListOfInts reverseListOfNumbers(ListOfInts list) { // 매번 List<int> 말고 내가 지정한 자료형을 붙임
  var reversed = list.reversed;
  return reversed.toList(); // reversed하고 나면 List랑은 좀 다른 iterable이 되기 때문에 .toList()가 필요
}

// typedef Map에 적용하기
typedef UserInfo = Map<String, String>;
String sayHi(UserInfo userinfo) {
  return "Hi ${userinfo['name']}";
} // 보다 구조화된 데이터의 형태를 지정하고 싶다면 class를 작성하는 게 나음

class Player {
  String name = 'cass'; // 클래스 변수에는 데이터 타입을 지정해줄 것. 선언과 동시에 초기값 할당 가능하지만 이러면 모든 인스턴스의 변수들이 같은 값을 가지게 되므로 밑에처럼 생성자를 이용하자
  int xp = 1500;
  final String name2 = 'cass2';

  void sayHello() {
    print("Hello my name is $name");  // this.name도 되지만 비추천이고, 중괄호로 감싸지 않는 $name으로 처리
  }

  void sayHello2() {
//     print("Hello my name is $name");  // Local variable 'name' cannot be referenced before it is declared
    var name = 'namename';
    // 클래스 내 메소드에도 같은 이름의 변수가 선언된 상황에서 클래스 변수 name을 쓰고 싶을 때는 불가피하게 this.name 사용
    print("Hi I am ${this.name}");
    print("Hello I am $name");
  }
}

class Player2 {
  late final String name; // 생성자 메소드 작성 시 오류 나는 것 방지 위해 late 붙여야 함
  late int xp;

  Player2(String name, int xp) { // 생성자의 이름은 클래스 이름과 같아야 함
    this.name = name;
    this.xp = xp;
  }

  void sayHello() {
    print("Hello my name is $name with xp of $xp");
  }
}

// Positioned constructor parameters
class Player3 {
  final String name; // 이제 late 떼도 됨
  int xp;

  Player3(this.name, this.xp);  // 각 순서에 따른 argument는 각 클래스 변수가 됨을 생성자 파라미터 란에 바로 넣어줌

  void sayHello() {
    print("Hello my name is $name with xp of $xp");
  }
}

// Named constructor parameters
class Player4 {
  final String name;
  int xp;
  String team;
  int age;

//   Player4({this.name = "", this.xp = 0, this.team = "", this.age = 0}); // 변수값이 null일 수도 있다는 경고에 대한 대책 1 - 초기값 지정 
  Player4({required this.name, required this.xp, required this.team, required this.age,}); // 변수값이 null일 수도 있다는 경고에 대한 대책 2 - required 수식 

  void sayHello() {
    print("Hello my name is $name with xp of $xp. I am in $team team and I am $age years old.");
  }
}

// Named Constructos
class Player5 {
  final String name, team; // 두 개의 final String인 name, team을 한꺼번에 선언함
  int xp, age; // 두 개의 intdls xp, age를 한꺼번에 선언함

  Player5(
      {required this.name,
        required this.team,
        required this.xp,
        required this.age,}
      );

  Player5.createBluePlayer({
    required String name,
    required int age,
  }) : this.name = name,  // 콜론(:) 사용 뒤 클래스변수의 값 초기화하는데
        this.age = age,  // name과 age에 대해서는 인스턴스 생성 시에 넣을 named parameter의 값을 가져올 것임
        this.team = 'blue',  // team과 blue는 그냥 생성자에서 값 초기화
        this.xp = 0;

  // Positional constructor를 이용한 named constructor 선언
  Player5.createRedPlayer(String name, int age) : // 역시 콜론(:) 사용 뒤 클래스변수 초기화
        this.name = name, // Positioinal constructor 형식의 경우 기본적으로 required이기 때문에 별도 수식자 붙일 필요 없음
        this.age = age,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print("Hello my name is $name with xp of $xp. I am in $team team and I am $age years old.");
  }

  // API에서 다량의 데이터를 가져온다는 가정 상황에서 constructor 활용하기
  // Flutter 앱 다수에서 사용되는 패턴으로 fromJson이라는 named constructor를 생성
  Player5.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'],
        age = playerJson['age'];
}

// Cascade Notation
class Player6 {
  String name, team;
  int xp, age;

  Player6(
      {required this.name,
        required this.team,
        required this.xp,
        required this.age,}
      );

  void sayHello() {
    print("Hello my name is $name with xp of $xp. I am in $team team and I am $age years old.");
  }
}

// Enums
enum Team {red, blue}  // =도 안씀 원소 따옴표로 감싸주기도 안씀 끝에 세미콜론도 안씀

enum XPLevel {beginner, medium, professional}

class Player7 {
  String name;
  int age;
  String team;
  XPLevel xp;

  Player7(
      {required this.name,
        required this.team,
        required this.xp,
        required this.age,}
      );

  void sayHello() {
    print("Hello my name is $name with xp level of $xp. I am in $team team and I am $age years old.");
  }
}

// Abstract Classes
abstract class Human {
  void walk();  // 추상클래스 내의 메소드는 구현하지 않고 signature(반환값의 타입)(와 파라미터 정도까지)만 정의. 그야말로 청사진
}

class Player8 extends Human {
  String name;
  int age;
  String team;
  String xp;

  Player8(
      {required this.name,
        required this.team,
        required this.xp,
        required this.age,}
      );

  @override // 필수로 붙여야 하진 않음
  void walk() => print('I am walking');

  void sayHello() {
    print("Hello my name is $name with xp level of $xp. I am in $team team and I am $age years old.");
  }
}
class Coach extends Human {
  @override
  void walk() => print('Hey man walk');
}

// Inheritance
class Human2 {
  final String name;

  Human2(this.name);

  void sayHi() {
    print('Hi my name is $name');
  }
}

enum Team2{green, yellow}

class Player9 extends Human2 {
  final Team team;

  Player9({
    required this.team,
    required String name
  }) : super(name); // 이 name은 자식 클래스의 name. 즉 Player9의 생성자 함수에 있는 name을 Human2로 전달(forward)
} // 전달하는 데에는 named constructor 만들 때처럼 콜론(:) 사용       
// super 키워드를 통해 확장 대상의 클래스와 상호작용 가능. 이것이 OOP의 개념

class Human3 {
  final String name;

  Human3({required this.name});

  void sayHi() {
    print('Hi my name is $name');
  }
}

class Player10 extends Human3 {
  final Team team;

  Player10({
    required this.team,
    required String name
  }) : super(name: name); // 왼쪽 name은 부모 클래스의 변수, 오른쪽 name은 자식클래스의 변수. 즉 Player10의 생성자 함수에 있는 name을 Human3로 전달(forward)
  // 위의 Human2-Player9 경우보다 조금 더 명확한 표기를 한 정도
  @override // 부모 클래스랑 내용이 다른 메소드를 만들 경우에는 특히 붙여주는 게 좋음
  void sayHi() {
    super.sayHi();  // super 키워드로 부모 클래스의 메소드를 호출
    print('and I play for $team');
  }
} // 부모 클래스가 생성자를 포함하는데, 이 클래스를 다른 어떤 곳에서 사용하려면, 필요한 값을 부모 클래스에 전달해고 부모 클래스의 생성자를 호출해줘야 함