float xwidth, xheight;
float lightx, lighty;
class Xwing
{
  Xwing()
  {
    xwidth = 30;
    xheight = 15;
  }//End constructor
  
  void displayxw(float x1, float y1 )//float x2, float y2)
  {
    PVector xwing1 = new PVector(x1, y1);
   // PVector xwing2 = new PVector(x2, y2);
    noStroke();
    fill(165);
    rect(xwing1.x, xwing1.y, xwidth, xheight, 4);
    //rect(xwing2.x, xwing2.y, xwidth, xheight, 4);
    
    //Display the wings
    stroke(200);
    strokeWeight(5);
    float w = 0;
    float h;
    float c = - 30;
    for(i = 1; i <= 4; i++)
    {
      if (i > 2)
      {
        w = xwidth;
        c = xwidth + 30;
      }//End if
      
      if (i % 2 == 0)
      {
        h = xheight + 5;
      }//End if
      
      else
      {
        h = - 5;
      }//End else
      
      line(xwing1.x + w, xwing1.y + xheight/2, xwing1.x + c, xwing1.y + h);
    }//End for
    
    //Add lights
    strokeWeight(3);
    fill(255, 90, 90);
    for (i = 0; i <= 2; i++)
    {
      if (i == 1)
      {
        noFill();
      }//End if
      
      stroke(255, 90, 90, 250 - (i * 100));
      ellipse(xwing1.x, xwing1.y + 2, 5 + (i * 5), 5 + (i * 5));
    }//End for
    
    fill(255, 90, 90);
    for (i = 0; i <= 2; i++)
    {
      if (i == 1)
      {
        noFill();
      }//End if
      
      stroke(255, 90, 90, 250 - (i * 100));
      ellipse(xwing1.x + xwidth, xwing1.y + 2, 5 + (i * 5), 5 + (i * 5));
    }//End for
    
    fill(255, 90, 90);
    for (i = 0; i <= 2; i++)
    {
      if (i == 1)
      {
        noFill();
      }//End if
      
      stroke(255, 90, 90, 250 - (i * 100));
      ellipse(xwing1.x, xwing1.y + xheight, 5 + (i * 5), 5 + (i * 5));
    }//End for
    
    fill(255, 90, 90);
    for (i = 0; i <= 2; i++)
    {
      if (i == 1)
      {
        noFill();
      }//End if
      
      stroke(255, 90, 90, 250 - (i * 100));
      ellipse(xwing1.x + xwidth, xwing1.y + xheight, 5 + (i * 5), 5 + (i * 5));
    }//End for
    /*
      fill(255, 90, 90);
      strokeWeight(3);
      stroke(255, 90, 90, 250);
      ellipse(xwing1.x, xwing1.y + 2, 5, 5);
      noFill();
      stroke(255, 90, 90, 150);
      ellipse(xwing1.x, xwing1.y + 2, 10, 10);
      stroke(255, 90, 90, 50);
      ellipse(xwing1.x, xwing1.y + 2, 15, 15);
      stroke(255, 90, 90, 0);
    */
  }//End displayxw()
}//End class Xwing