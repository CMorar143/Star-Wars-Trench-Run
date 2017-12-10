float[] t = new float[1000];
float syswidth, sysheight;

class Aim
{
  //Constructor for the aiming reticle
  Aim()
  {
    syswidth = 145;
    sysheight = 85;
  }
  
  void UseAim(float R, float r, float n)
  {
    noFill();
    //To use the aiming reticle
    PVector mouse = new PVector(mouseX, mouseY);
    strokeWeight(2);
    stroke(255);
    
    pushMatrix();
    translate(mouse.x, mouse.y);
    
    //Loop through n (20) number of times to create and move each arc
    for (i = 0; i <= n; i = i + 1) 
    {
      t[i] = 2 * i * PI/n - PI/4;
      
      //Create every second arc as the inner ones and every other one is the outer ones.
      if (i % 2 == 0) 
      {
        arc(0, 0, 2 * R, 2 * R, t[i], t[i+1]);
      }//End if
      
      else 
      {
        arc(0, 0, 2 * r, 2 * r, t[i], t[i+1]);
      }//End else
    }//End for
    popMatrix();  //Reset the origin to (0, 0)
    var += PI/100;  //Set the speed of the aiming reticle
  }//End UseAim()
  
  void displaySys(float rectx, float recty, float rounded)
  {
    noFill();
    PVector pos = new PVector(rectx + 2, recty);
    strokeWeight(2);
    stroke(44, 157, 232);
    
    pushMatrix();
      translate(pos.x, pos.y);
      //Draw lines along the top of the targeting system
      int j = 1;
      for (i = 7; i <= 133; i += 9)
      {
        
        if (i <= 61)
        {
          j++;
        }//End if
        
        else if (i == 70)
        {
          j = 13;
        }//End if else
        
        else if (i >= 77)
        {
          if (j == 13)
          {
            j = 8;
          }//End inner if
          
          else
          {
            //Start decreasing the size of each line
            j--;
          }//End inner else
        }//End outer else
        line(i, 0, 70, sysheight/6 + j);
      }//End for
      
      //Draw lines at the bottom of the targeting system
      j = 1;
      for (i = 7; i <= 133; i += 9)
      {
        
        if (i <= 61)
        {
          j++;
        }//End if
        
        else if (i == 70)
        {
          j = 13;
        }//End if else
        
        else if (i >= 77)
        {
          if (j == 13)
          {
            j = 8;
          }//End inner if
          
          else
          {
            //Start decreasing the length of each line
            j--;
          }//End inner else
        }//End outer else
        line(i, sysheight, 70, sysheight/1.2 - j);
      }//End for
      
      //Draw lines along the left wall of the targeting system
      j = 1;
      for (float i = sysheight/3; i <= sysheight/3 + 28.3; i += 4.7)
      {
        if (i < sysheight/2)
        {
          j++;
        }//End if
        
        else if (i == sysheight/2)
        {
          j += 5;
        }//End if else
        
        else if (i > sysheight/2)
        {
          if (j == 27)
          {
            j = 22;
          }//End inner if
          
          else
          {
            //Start decreasing the length of each line
            j--;
          }//End inner else
        }//End outer else
        line(0, i, 20 + j, sysheight/2);
      }//End for
      
      //Draw lines along the right wall of the targeting system
      j = 1;
      for (float i = sysheight/3; i <= sysheight/3 + 28.3; i += 4.7)
      {
        if (i < sysheight/2)
        {
          j++;
        }//End if
        
        else if (i == sysheight/2)
        {
          j += 5;
        }//End if else
        
        else if (i > sysheight/2)
        {
          if (j == 27)
          {
            j = 22;
          }//End inner if
          
          else
          {
            //Start decreasing the length of each line
            j--;
          }//End inner else
        }//End outer else
        line(syswidth - 2, i, syswidth - (20 + j), sysheight/2);
      }//End for
    popMatrix();
    strokeWeight(5);
    stroke(0, 0, 51);
    rect(rectx, recty, syswidth, sysheight, rounded);
  }//End displaySys()
}//End class