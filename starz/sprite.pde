class Sprite
{
  public PImage[] img;
  
  private int imgInt;
  public float x,y;
  private int spriteWidth, spriteHeight;
  
  public Sprite(PImage[] sprite, float x, float y)
  {
    spriteWidth = 60;
    spriteHeight = 120;
    img = sprite;
    imgInt = 0;
    this.x = x - spriteWidth / 2;
    this.y = y;
  }
  
  public void draw()
  {
    image(img[imgInt],x,y,spriteWidth,spriteHeight);
    if (frameCount % 5 == 0)
    {
      if (imgInt < 3) {
        imgInt++;
      } else {
        imgInt = 0;
      }
    }
  }
  
  public void right()
  {
    if (x <= width) 
    {
      x += 4;
    }
  }
  
  public void left()
  {
    if (x > 0)
    {
      x -= 4;
    }
  }
  
  public boolean underSprite(float x, float y)
  {
    return (x > this.x -30 && x < this.x + this.spriteWidth && y > this.y + 40 && y < this.y + this.spriteHeight);
  }
}
