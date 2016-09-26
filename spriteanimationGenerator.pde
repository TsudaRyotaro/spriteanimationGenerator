int numofimage_w = 4;  //num
int numofimage_h = 5;
int imageW = 256;  //px
int imageH = 192;

PImage[][] img = new PImage[numofimage_w][numofimage_h];

void setup(){
  size(numofimage_w * imageW,numofimage_h * imageH);
  background(255);
  for(int i = 0;i < numofimage_h;i++){
    for(int j = 0;j < numofimage_w;j++){
    String str = "image ("+ ((i * numofimage_w + j)+1) + ").png";
    img[j][i] = loadImage(str);   
    }
  }
  
  for(int i = 0;i < numofimage_h;i++){
    for(int j = 0;j < numofimage_w;j++){
    image(img[j][i],j * imageW - 1,i * imageH - 1);
    }
  }
  
  int h = hour();
  int m = minute();
  int s = second();
  String savename = ""+h+"_"+m+"_"+s;
  save("result/"+savename+".png");
}

