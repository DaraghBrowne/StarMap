//Name -           Daragh Browne
//Student Number - C15396706
void setup()
{
  size(800,800);
  //call loadData function
  loadData();
  printStars();
}

//Global ArrayList of Star objects
ArrayList<Star> stars = new ArrayList<Star>();

//loads the data from the file and populates it into the ArrayList stars
void loadData()
{
  Table starTable = loadTable("HabHYG15ly.csv", "header");
  
  int rowCount = starTable.getRowCount();
  
  //go through file row by row
  for(int i = 0; i<rowCount; i++)
  {
    //Make on object of class Star
    
    Star star = new Star(starTable.getRow(i));
  }
  
}

void printStars()
{
  for(Star i: stars)
  {
    println(i);
    println("\n");
  }
}

void draw()
{
  
}