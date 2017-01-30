public void setup()
{
size(300,300);
}
public void draw()
{
fill(255,255,255);
sierpinski(5, 295, 290);
}
public void mouseDragged()//optional
{
int r = (int)(Math.random()*255);
int g = (int)(Math.random()*255);
int b = (int)(Math.random()*255);

fill(r,g,b);
sierpinski(5,295,290);
}
public void sierpinski(int x, int y, int len) 
{
if(len<=20){
triangle(x,y,x+len,y, x+(len/2), y-len);
}
else{
	sierpinski(x,y,len/2);
	sierpinski(x+(len/2),y, len/2);
	sierpinski(x+(len/4),y-(len/2), len/2);
}
}