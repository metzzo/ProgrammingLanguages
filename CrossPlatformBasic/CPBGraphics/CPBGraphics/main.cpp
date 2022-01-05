#include <stdlib.h>
#include "cpbgraphics.c"


int main ( int argc, char** argv )
{
    if (!graphicsInit("CPBGraphics Test",640,480,0)) return 1;

    int bmp = loadImage("cb.bmp");

    int x=100;
    while (!appTerminate() && !key(SDLK_ESCAPE))
    {
        //rotate(mouseX() % 360);
        //scale(((float)mouseY())/100.0f,1.0f);
        drawImage(bmp,mouseX(),mouseY(),0);
        //scale(4,4);
        drawImage(bmp,mouseX()+20,mouseY(),0);
        if (key(SDLK_LEFT)) x+=4;
        if (key(SDLK_RIGHT)) x-=4;

        updateEvent();
        showScreen();
    }

    graphicsDeInit();
    return 0;
}

