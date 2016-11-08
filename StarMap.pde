//Name -           Daragh Browne
//Student Number - C15396706
void setup()
{
  size(800,800);
  background(0);
  //call loadData function
  loadData();
  printStars();
}

  int border = 50;

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
    stars.add(star);
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
  color(255);
  stroke(153, 5, 247);
  for(border = 50;border<400;border+=50)
  {
  line(border,border, width-border, border );
  line(border,border, border, height - border );
  line(border,height - border, width-border, height - border );
  line(width - border,height - border, width-border, border );
  }
}