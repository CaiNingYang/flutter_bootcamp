import 'dart:io';
import 'dart:convert';

int addone(int a){
  return a + 1;
}

String concat(String a, String b, String c, String d){
  return a + b + c + d;
}

String playGame(String guess, String answer){
  int a1 = int.parse(answer[0]);
  int a2 = int.parse(answer[1]);
  int a3 = int.parse(answer[2]);  
  int g1 = int.parse(guess[0]);
  int g2 = int.parse(guess[1]);
  int g3 = int.parse(guess[2]);
    
  var a = 0;
  var b = 0;
  
  if(a1 == g1){
    a = addone(a); 
  }
  
  
  if(a2 == g2){
    a = addone(a); 
  }
  
  if(a3 == g3){
    a = addone(a); 
  }
  
  if(a1 == g2){
    b = addone(b);
  }
  
  if(a1 == g3){
    b = addone(b);
  }
  
  if(a2 == g1){
    b = addone(b);
  }
  
  if(a2 == g3){
    b = addone(b);
  }
  
  if(a3 == g1){
    b = addone(b);
  } 
  
  if(a3 == g2){
    b = addone(b);
  }

  return concat(a.toString(), 'A', b.toString(), 'B');

  }

class ABGame3 {
    String? name;
    String? answer;
    ABGame3() {
        print("Please enter your name: ");
        name = stdin.readLineSync();
        print("Hello $name This is an AB Game, please enter 3 different number. You got 7 shots to go! ");
        print("Please enter 3 digit answer: ");
        answer = stdin.readLineSync();
    }

    void start() {
        while(true){
            print("Please enter 3 digits number: ");
            String? num = stdin.readLineSync();
            String result = playGame(num!, answer!);
            if (result == "3A0B") {
                print("Yes");
                break;
            }
            else{
                print(result);
            }
        }
    }

}

void main() {
    ABGame3 abGame3 = ABGame3();
    abGame3.start();
}
