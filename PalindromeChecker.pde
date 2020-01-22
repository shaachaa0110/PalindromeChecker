public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
    String olw = onlyLetters(word);
    String nsnlw = noSpaces(olw);
    String ncw = noCapitals(nsnlw);
    String forwards = ncw;
    String backwards = reverse(forwards);
    if(backwards.equals(forwards)){
      return true;
    }
    return false;
}
public String reverse(String str)
{
    String reversed = "";
    for(int i = 0; i < str.length(); i++){
    reversed += str.substring(str.length()-i-1, str.length()-i);
    }
    return reversed;
}
public String onlyLetters(String sString){
  String onlyLettersString = new String();
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      onlyLettersString += sString.charAt(i);
    }
  }
  return onlyLettersString;
}
public String noSpaces(String sWord){
  String noSpaces = sWord.replaceAll("\\s+","");
  return noSpaces;
}
public String noCapitals(String sWord){
  String  lower = sWord.toLowerCase();
  return lower;
}


