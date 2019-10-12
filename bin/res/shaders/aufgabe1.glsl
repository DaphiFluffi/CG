#version 330

//Funktionen Aufgabe 1
out vec3 pixelFarbe; //3D Vektor

//Funktionen Aufgabe 2
/*vec2 mittelpunkt = vec2(350,350);
bool istImKreis(){
    return (distance(mittelpunkt, gl_FragCoord.xy)<= 50);// wenn die Distanz zwischen dem Mittelpunkt und irgendeiner beliebigen Korrdinate kleiner ist also der Radius 50
}*/

//Funktionen Aufgabe 3
/*void maleKreis(vec2 m, float radius){
        if (distance(m, gl_FragCoord.xy)<= radius){
            pixelFarbe = vec3(0.0, 1.0, 0.0);
    }
}

void maleRechteck(float a,float b,float c, float d){
    if (gl_FragCoord.x >= a && gl_FragCoord.x <= b && gl_FragCoord.y >= c && gl_FragCoord.y <= d){
        pixelFarbe = vec3(1.0, 0.0, 0.0);
    }
}*/

mat2 Rotation(float w){
    mat2 rotation = mat2(cos(w), sin(w), -sin(w), cos(w)); //Matrizen spaltenweise befüllen!
    return rotation;
}

void main (){
    pixelFarbe = vec3(0.25, 0.88, 0.82); //türkis
    //Aufgabe 1
   if (gl_FragCoord.x >= 325 && gl_FragCoord.x <= 375 && gl_FragCoord.y >= 340 && gl_FragCoord.y <= 360){
        pixelFarbe = vec3(1.0, 0.0, 0.0);
    }


    //Aufgabe 2
    /*if(istImKreis()){ //Wenn mein Pixel im Kreis ist
        pixelFarbe = vec3(0.0,1.0,0.0); // Färbe die Pixel in der Gegend grün
    }*/

    //Aufgabe 3
    /*maleRechteck(325, 375, 340, 360);
    maleRechteck(200, 300, 400, 500);
    maleRechteck(500, 650, 200, 300);


    maleKreis(vec2(150,150),50);
    maleKreis(vec2(500,500),10);*/

    //Aufgabe4
    //das programm wird quasi für jeden Pixel neu aufgerufen
    mat2 meineRotation = Rotation(-0.174533); //-10 grad
    vec2 rotierteCoord = meineRotation * gl_FragCoord.xy ; //die for schleifen über x und y finden außerhalb des Programms statt
   if(rotierteCoord.x >= 325 && rotierteCoord.x <= 375 && rotierteCoord.y >= 340 && rotierteCoord.y <= 360){
       pixelFarbe = vec3(0.0,1.0,0.0);
   }

    //Aufgabe 5


}

