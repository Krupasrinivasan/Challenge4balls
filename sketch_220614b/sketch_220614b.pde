import processing.core.PApplet;
public class sketch_220614b extends PApplet{
  final static int width=640;
  final static int height=420;
  final static int diameter=10;
  // int x=0,x1=0,x2=0,x3=0;
  public static void main(String args[]){
    PApplet.main("sketch_220614b",args);}
    @Override
    public void settings(){
      super.settings();
      size(width,height);
    }
    //@Override
    //public void draw(){
    //  ellipse(x,height/5, diameter, diameter);
    //  ellipse(x1,(height*2)/5,diameter, diameter);
    //  ellipse(x2,(height*3)/5,diameter, diameter);
    //  ellipse(x3,(height*4)/5,diameter, diameter);
    //  x++;
    //  x1=x1+2;
    //  x2=x2+3;
    //  x3=x3+4;
    //}
     ArrayList<challenge> obj=new ArrayList<challenge>();
    @Override
    public void setup(){
      for(int i=1;i<=4;i++){
        obj.add(new challenge(i,(height*i)/5,diameter));
      }
    }
   public void draw(){
     for(challenge i : obj)
     {
       i.draw();
     }
   }
    
    public class challenge{
      int x1=0,x,width,height,diameter;
      public challenge(int x,int height,int diameter){
        this.x=x;
        this.height=height;
        this.diameter=diameter;
      }
       void draw(){
        ellipse(x1,height,diameter,diameter);
        x1=x1+x;
      }
    }
      
}
