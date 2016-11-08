//Name -           Daragh Browne
//Student Number - C15396706
void setup()
{
  size(800,800);
  
  loadData();
}

ArrayList<Star> stars = new ArrayList<Star>();


void loadData()
{
  Table starTable = loadTable("HabHYG15ly.csv");
  
  int rowCount = starTable.getRowCount();
  
  for(int i = 0; i<rowCount; i++)
  {
    //Make on object of class Star
    
    Star star = new Star(starTable.getRow(i));
  }
  
}


void draw()
{
  
}