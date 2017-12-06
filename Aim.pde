float[] t = new float[1000];

class Aim
{
  Aim()
  {
    noFill();
  }
  
  void UseAim(float R, float r, float n)
  {
    
    strokeWeight(5);
    stroke(255);
    
    pushMatrix();
    translate(mouseX, mouseY);
    
    for (int i = 0; i <= n; i= i+1) 
    {
      t[i] = 2 * i * PI/n - PI/4;
      
      if (i % 2 == 0) 
      {
        arc(0, 0, 2*R, 2*R, t[i], t[i+1]);
      } 
      
      else 
      {
        arc(0, 0, 2*r, 2*r, t[i], t[i+1]);
      }
    }
    popMatrix();
    var += PI/100;
  }
}