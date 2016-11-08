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
    Hab = Row.getInt("Hub?");
    DisplayName = Row.getString("DisplayName");
    Distance = Row.getFloat("Distance");
    Xg = Row.getInt("Xg");
    Yg = Row.getInt("Yg");
    Zg = Row.getInt("Zg");
    AbsMag = Row.getFloat("AbsMag");
  }
}