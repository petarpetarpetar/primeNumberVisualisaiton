import java.util.*;
int fieldSize=1;
int n;
int posX,posY;
int count;
int num;
boolean toggleText=false; //moze ovde da se iskljuci da u kvadratima bude broj radi lakseg pregleda kada se stavi mali fieldSize
boolean stroke=false;  
boolean prost(int x)
{
  if(x%2==0 && x!=2){return false;}
   for(int i=3;i<sqrt(x)+1;i+=2)
   {
       if(x%i==0){return false;}
   }
   return true;
}

void setup()
{
 if(!stroke){noStroke();}
 fullScreen(); 
  num = 41; //broj u sredini;
  posX=width/2 - fieldSize/2;
  posY=height/2 - fieldSize/2;
  //fali rect u sredini!
  if(prost(num)){fill(70,255,70);rect(posX,posY,fieldSize,fieldSize);}
  else{fill(255,0,0);rect(posX,posY,fieldSize,fieldSize);}
  textSize(fieldSize/3);
}


void draw()
{
fill(255,0,0);
  for(int i=0; i<2*n+1; i++)
  {
    num++;
    if(prost(num)){fill(0,0,255);}
    else {fill(200,200,200);}
    posX+=fieldSize;
    rect(posX,posY,fieldSize,fieldSize); 
    fill(0,0,0);
    if(toggleText)
    text(num,posX,posY+fieldSize/2);
  }
  
  for(int i=0; i<2*n+1; i++)
  {
    num++;
    if(prost(num)){fill(0,0,255);}
    else {fill(200,200,200);}
    posY-=fieldSize;
    rect(posX,posY,fieldSize,fieldSize);
    fill(0,0,0);
    if(toggleText)
    text(num,posX,posY+fieldSize/2);
  }
  
  for(int i=0; i < 2*n+2; i++)
  {
    num++;
    if(prost(num)){fill(0,0,255);}
   else {fill(200,200,200);}
    posX-=fieldSize;
    rect(posX,posY,fieldSize,fieldSize);
    fill(0,0,0);
    if(toggleText)
    text(num,posX,posY+fieldSize/2);
  }
  
  for(int i=0; i < 2*n+2; i++)
  {
   num++;
   if(prost(num)){fill(0,0,255);}
   else {fill(200,200,200);}
   posY+=fieldSize;
   rect(posX,posY,fieldSize,fieldSize);
   fill(0,0,0);
   if(toggleText)
   text(num,posX,posY+fieldSize/2);
  }
 
 n++;
}
