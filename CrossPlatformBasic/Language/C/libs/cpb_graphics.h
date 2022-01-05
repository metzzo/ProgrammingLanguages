#include <SDL.h>
#include <SDL_opengl.h>
#define USEGL 0


typedef struct _cpbimage {
    #if USEGL
        GLuint* surfaces;
    #else
        SDL_Surface** surfaces;
    #endif
    int frames;

    int width, height;
} CPBImage;

int graphicsInit(char* title, int width, int height, char fullscreen); //Okay
void graphicsDeInit(); //Okay
int loadImage(char* path);  //Okay
int loadAnim(char* path, int framewidth, int frameheight); //ToDo
int registerImage(CPBImage* img, int posi); //Okay
void drawImage(int image, int posx, int posy, int frame); //Okay
void showScreen(); //Okay
void freeImage(int img);
char validImage(int img); //Okay
void setTransparentColor(int col);
int rgb(char r, char g, char b);
void rotate(float rot); //ToDo
void alpha(float alpha); //ToDo
void scale(float scalex, float scaley); //ToDo

#if USEGL
GLuint surface2texture(SDL_Surface* surface);
void drawQuad(float layer, int width, int height);
int* adjustTexSize(int width,int height);
GLuint loadTexture ( SDL_Surface* sdlimage );
int pow2Size(int n);
#else
SDL_Surface* drawSurface;
#endif


char appTerminate();
void updateEvent();
char key(int key);
char mouse(int mouse);
int mouseX();
int mouseY();
int keyEscape();
int keyLeft();
int keyRight();
int keyUp();
int keyDown();



char isAppTerminate;
int mousePosX, mousePosY;
Uint8* keyState;
SDL_Surface* graphicsScreen;
CPBImage** images;
int maxImages;
int transparentCol;
float rotation, scalingx, scalingy;
