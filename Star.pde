class Star
{
  int Hab;
  String DisplayName;
  float Distance;
  int Xg;
  int Yg;
  int Zg;
  float AbsMag;
  
  Star(TableRow Row)
  {
    Hab = Row.getInt("Hab?");
    DisplayName = Row.getString("Display Name");
    Distance = Row.getFloat("Distance");
    Xg = Row.getInt("Xg");
    Yg = Row.getInt("Yg");
    Zg = Row.getInt("Zg");
    AbsMag = Row.getFloat("AbsMag");
  }
  
  //converts objects to string so it can be printed
  String toString()
  {
    return Hab + "\t" + DisplayName + "\t" + Distance + "\t" + Xg + "\t" + Yg
    + "\t" + Zg+ "\t" + AbsMag;
  }
}