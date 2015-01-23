public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public boolean palindrome(String word)
{ 
  word=word.toLowerCase();
  word=word.replace(" ","");
  word=word.replace(",", "");
  word=word.replace("!","");
  for(int i=0;i<word.length();i++)
  {

    if(word.charAt(i)!=word.charAt(word.length()-1-i))
    {
      return false;
    }
    System.out.println(word);
  }

  return true;   
}


