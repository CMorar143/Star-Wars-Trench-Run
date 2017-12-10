float speed;

class Star
{
  float locx, locy;
  float size = random(1, 5);
  float z;
  float sx, sy;
  
  Star()
  {
    speed = 10;
    z = random(width);
    locx = random(-width/2,width/2);
    locy = random(-height/2,height/2);
  }//End constructor
  
  void backgroundS()
  {
    strokeWeight(2);
    stroke(random(100, 255));
    fill(255);
    
    sx = map(locx/z, 0, 1, 0, width);
    sy = map(locy/z, 0, 1, 0, height);
    
    ellipse(sx, sy, size, size);
  }
  
  boolean timeToReset()
  {
    if (z < 1)
    {
      return true;
    }
    
    else 
    {
      return false;
    }
  }
  
  void travel()
  {
    z = z - speed;
    if (timeToReset())
    {
      z = width;
    }//End if
  }
  
}//End class