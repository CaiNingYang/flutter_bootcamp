void main() {
  
  var answer = 134;
  
  int guess = 235;
  
  int a1 = answer % 10;
  print(a1);
  
  answer = (answer / 10).floor();
  int a2 = answer% 10;
  print(a2);
  
  answer = (answer / 10).floor();
  int a3 = answer% 10;
  print(a3);
  
  
  int g1 = guess % 10;
  print(g1);
  
  guess = (guess / 10).floor();
  int g2 = guess % 10;
  print(g2);
  
  guess = (guess / 10).floor();
  int g3 = guess % 10;
  print(g3);
 
    
  var a = 0;
  var b = 0;
  
  if(a1 == g1){
    a = a + 1;  
  }
  
  
  if(a2 == g2){
    a = a + 1;   
  }
  
  if(a3 == g3){
    a = a + 1;
  }
  
  if(a1 == g2){
    b = b + 1;
  }
  
  if(a1 == g3){
    b = b + 1;
  }
  
  if(a2 == g1){
    b = b + 1;
  }
  
  if(a2 == g3){
    b = b + 1;
  }
  
  if(a3 == g1){
    b = b + 1;
  } 
  
  if(a3 == g2){
    b = b + 1;
  }
  print(a.toString()+'A'+b.toString()+'B');
  
}

