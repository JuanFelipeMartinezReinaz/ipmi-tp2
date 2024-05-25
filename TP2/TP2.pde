//Juan Felipe Martinez Reinaz 
// DNI 46017932
//Legajo 119084/4

PImage img1, img2, img3, img4;
PFont fuente;
int estacion, contador, posX, posY;
float posXTexto,X, Y, transparienciaTexto=255;
String texto1, texto2, texto3;


void setup() {
  //Tamaño del Sketch
  size(640, 480);
  //Asignacion de imagenes
  img1=loadImage("data/Chevallier1.png.jpg");
  img2=loadImage("data/Chevallier2.jpg");
  img3=loadImage("data/Chevallier3.jpg");
  img4=loadImage("data/MiguelChevallier.png");
  //Velocidad de los fotogramas por segundos
  frameRate(10);
  //Fuente
  fuente=loadFont("Corbel.vlw");
  //Textos
  texto1=("Chevallier creó diferentes proyecciones para cada una \n de las diferentes materias expuestas \n como, salud, biología, neurología, física \n En sus proyecciones hay un gran colorido,\n formas geométricas y dibujos cósmicos \n que contrastan con las vidrieras y los maravillosos relieves \n que vemos en el interior de la capilla,\n haciendo que se fusionen arte y ciencia \n en una experiencia mágica y espiritual.");
  texto2=("El Origen del Mundo fue un mapping que cubrió la fachada del Palacio de Bellas Artes \n en México DF durante el último Festival Internacional de las Luces de México. \n El artista francés Miguel Chevalier fue el responsable de esta \n instalación multimedia desarrollada durante el anochecer \n con un manto de pixeles.");
  texto3=("En Milan, presentó un gran tapiz digital que en su contínua \n mutación va transformando la instalación \n transformando al espectador en actor de la obra.\n Gracias a una red de sensores en el pavimento,\n se va provocando un movimiento en la obra \n como un contínuo work in progress a medida que los \n espectadores se mueven, acompañado todo por \n una bella música que acompaña la instalación.");
 
  estacion=1;
  contador=0;
  posXTexto=10;
  posY=300;
  posXTexto=10;
  Y=frameCount;
}
void draw() {
  println("pantalla="+estacion);
  background(255);
  textFont(fuente, 17);
  fill(255);
  textSize(17);
  X=frameCount;

  if (estacion==1) {
    //Pantalla 1
    image(img1, 0, 0, width, height);
    text(texto1, posXTexto, posY);
    fill(255);
    contador++;
    posXTexto+=1;
    //Transicion 1-2
    if (contador>=150) {
      estacion=2;
      contador=0;
      posX=10;
      posY=30;
      posXTexto=10;
     
      
    }
  } else if ( estacion==2) {
   //Pantalla 2
    image(img2, 0, 0, width, height);
    text(texto2, posX, posY );
// transicion 2-3
    posY+=2;
    if (posY>=width) {
      estacion = 3;
      contador = 0;
      posX = 20;
      posY = 320;
    }
  } else if ( estacion==3) {
   //Pantalla 3 
    image(img3, 0, 0, width, height);
    fill( transparienciaTexto);

    text(texto3, 30, 30);
   //Transicion 3-4
    transparienciaTexto--;
    if (transparienciaTexto<=0) {
      estacion=4;
      contador=0;
      transparienciaTexto=255;
    }
  } else if (estacion==4) {
    //Pantalla 4 
    image(img4, 0, 0, width, height);
    fill(255);
   //Boton
    rect(500, 430, 140, 50);
    fill(97,41,255);
    text("Reiniciar",540,460);
    if (mouseX > 500 && mouseX < 640 && mouseY > 430 && mouseY < 480) {
    fill(0, 255, 0);
    }else{
      fill(255);
    }
}
}
void mousePressed() {
  if (estacion==4) {
    //Boton
    if (mouseX>500 && mouseX<640
    && mouseY>430 && mouseY<480){
    estacion=1;}
  }else{posY=30;
   



}
}
