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
  word = word.replaceAll("\\s", "").replaceAll(",", "").replaceAll("\\.", "").replaceAll(";", "").replaceAll("!", "").replaceAll("\'", "").toLowerCase();

  if (word.length() > 1)
  {
    String halfWord1 = word.substring(0, (word.length()/2));
    String halfWord2 = word.substring((word.length()/2) + (word.length() % 2 == 0 ? 0 : 1));

    return halfWord1.equals(reverse(halfWord2));
  }

  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i=str.length()-1; i >= 0; i--)
    {
      sNew += str.substring(i, i+1);
    }
    return sNew;
}
