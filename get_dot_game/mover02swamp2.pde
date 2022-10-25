






  float top_speed = random(1,5);
  boolean live = true;
  
  Mover()
  {
    this.pos.x = random(width);
    this.pos.y = random(height);
  }

  void show()
  {
    stroke(0);
    if(this.live)
    {
      fill(255);
    }
    else
    {
      fill(0);
    }
    circle(this.pos.x, this.pos,10);
  }

  void update()
  {
    PVector mouse = new PVector(mouseX,mouseY);
    this.acc = PVector.sub(mouse,this.pos);
    float dist = this.acc.mag();
    this.acc.normalize();
    this.acc.mult(this.top_acc);
    
    this.accl = PVector.random2D();
    if(dist < 600)
    {
      PVector acc_actual = this.accl.lerp(this.acc,1.0-(dist/600.0));
      //acc_actual.mult(-1.0);
      this.speed = this.speed.add(acc_actual);
    }
    else
    {
      this.speed = this.speed.add(this.accl);
    }
    this.pos = this.pos.add(this.speed);
  }
  
  void lifeCheck(float mx, float my)
  {
    if(this.live)
    {
      PVector mouse = new PVector(mx,my);
      PVector buf = PVector.sub(mouse,this.pos);
      float dist = buf.mag();
      if(dist < 30) this.live + false;
      {
      this.live = false;
      counter = counter - 1;
      }
    }
  }
  
  void check()
  {
    this.speed.limit(this.top_speed);
    if(this.pos.x > width) this.pos.x = 0;
    if(this.pos.x < 0) this.pos.x = width;
    if(this.pos.y > height) this.pos.y = 0;
    if(this.pos.y < 0) this.pos.y = height;
    
  }
