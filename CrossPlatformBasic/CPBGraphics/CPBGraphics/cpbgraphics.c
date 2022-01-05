#include <SDL.h>

#include <SDL_opengl.h>

#include "cpb_graphics.h"



int graphicsInit(char* title, int width, int height, char fullscreen) {

    maxImages = 1;

    if ( SDL_Init( SDL_INIT_VIDEO ) < 0 ) {
        printf( "Unable to init SDL: %s\n", SDL_GetError() );
        return 0;
    }
    atexit(SDL_Quit);
    SDL_WM_SetCaption(title, NULL);
    int tmpOpenGLFlag = SDL_OPENGL;
    int fullscreenFlag = SDL_FULLSCREEN;
    if (!fullscreen) {
        fullscreenFlag = 0;
    }
    #if USEGL
        SDL_GL_SetAttribute( SDL_GL_RED_SIZE, 5 );
        SDL_GL_SetAttribute( SDL_GL_GREEN_SIZE, 5 );
        SDL_GL_SetAttribute( SDL_GL_BLUE_SIZE, 5 );
        SDL_GL_SetAttribute( SDL_GL_DEPTH_SIZE, 16 );
        SDL_GL_SetAttribute( SDL_GL_DOUBLEBUFFER, 1 );
    #else
        tmpOpenGLFlag = 0;
    #endif
    graphicsScreen = SDL_SetVideoMode(width,height, 32, SDL_HWSURFACE|SDL_DOUBLEBUF|tmpOpenGLFlag|fullscreenFlag);
    if (graphicsScreen == NULL) {
        printf("Unable to set 640x480 video: %s\n", SDL_GetError());
        return 0;
    }
    images=(CPBImage**)malloc(sizeof(CPBImage)*maxImages);
    //OpenGL Init
    #if USEGL
        //OGL init
        glEnable( GL_TEXTURE_2D );
        glClearColor( 0.0f, 0.0f, 0.0f, 0.0f );
        glViewport( 0, 0, width, height );
        glClear( GL_COLOR_BUFFER_BIT );
        glMatrixMode( GL_PROJECTION );
        glLoadIdentity();
        glOrtho(0.0f, width,height, 0.0f, -1.0f, 1.0f);

        glMatrixMode( GL_MODELVIEW );
        glLoadIdentity();
        glEnable(GL_CULL_FACE);
        glCullFace(GL_FRONT);
        glEnable(GL_ALPHA_TEST);
        glAlphaFunc(GL_GREATER, 0.1);
        scalingx=1;
        scalingy=1;
    #else
        drawSurface = graphicsScreen;
    #endif

    setTransparentColor(rgb(0,0,0));
    updateEvent();
    return 1;
}

void graphicsDeInit() {
    int i;
    for (i=0;i<maxImages;i++) {
        if (images[i] != NULL) {
            freeImage(i);
        }
    }
    SDL_Quit();
}

int rgb(char r, char g, char b) {
    return SDL_MapRGB(graphicsScreen->format,r,g,b);
}
void setTransparentColor(int col) {
    transparentCol = col;
}

#if USEGL
void rotate(float rot) {
    rotation = rot;
}

void scale(float scalex, float scaley) {
    scalingx=scalex;
    scalingy=scaley;
}

GLuint surface2texture(SDL_Surface* surface) {
    if (surface != NULL) {
        // Check that the image's width is a power of 2
        if ( (surface->w & (surface->w - 1)) != 0 || (surface->h & (surface->h - 1)) != 0) {
            int newW, newH;
            int* ret=adjustTexSize(surface->w,surface->h);
            newW=ret[0];
            newH=ret[1];
            SDL_Surface* newSurf;
            Uint32 rmask, gmask, bmask, amask;
            #if SDL_BYTEORDER == SDL_BIG_ENDIAN
                rmask = 0xff000000;
                gmask = 0x00ff0000;
                bmask = 0x0000ff00;
                amask = 0x000000ff;
            #else
                rmask = 0x000000ff;
                gmask = 0x0000ff00;
                bmask = 0x00ff0000;
                amask = 0xff000000;
            #endif
            newSurf = SDL_CreateRGBSurface(SDL_SWSURFACE, newW,newH, 32, rmask, gmask, bmask, amask);
            SDL_Rect rect;
            rect.x=0;
            rect.y=0;
            SDL_BlitSurface(surface, NULL, newSurf, &rect);
            SDL_FreeSurface(surface);
            surface=newSurf;
        }

        GLint nOfColors;
        GLuint texture;
        GLenum texture_format;
        // get the number of channels in the SDL surface
        nOfColors = surface->format->BytesPerPixel;
        if (nOfColors == 4)     // contains an alpha channel
        {
                if (surface->format->Rmask == 0x000000ff)
                        texture_format = GL_RGBA;
                else
                        texture_format = GL_BGRA;
        } else if (nOfColors == 3)     // no alpha channel
        {
                printf("hallo");
                if (surface->format->Rmask == 0x000000ff)
                        texture_format = GL_RGB;
                else
                        texture_format = GL_BGR;
        } else {
                printf("warning: the image is not truecolor..  this will probably break\n");
                // this error should not go unhandled
        }
        // Have OpenGL generate a texture object handle for us
        glGenTextures( 1, &texture );

        // Bind the texture object
        glBindTexture( GL_TEXTURE_2D, texture );

        // Set the texture's stretching properties
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
            glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );

        // Edit the texture object's image data using the information SDL_Surface gives us

        glTexImage2D( GL_TEXTURE_2D, 0, nOfColors, surface->w,surface->h, 0,
                          texture_format, GL_UNSIGNED_BYTE, surface->pixels );
        SDL_FreeSurface(surface);

        return texture;
    } else {
        printf("Surface does not exist\n");
        return 0;
    }
}

void drawQuad(float layer, int width, int height) {
    glBegin(GL_QUADS);
        glTexCoord2i(0,0);
        glVertex3f((float)-width/2, (float)-height/2, (float)layer);


        glTexCoord2i(1,0);
        glVertex3f((float)width/2, (float)-height/2, (float)layer);

        glTexCoord2i(1,1);
        glVertex3f((float)width/2, (float)height/2, (float)layer);

        glTexCoord2i(0,1);
        glVertex3f((float)-width/2, (float)height/2, (float)layer);
    glEnd();
}
int* adjustTexSize(int width,int height) {
    printf("kk %d %d",width,height);
	int w=pow2Size( width );
	int h=pow2Size( height );

	while (1)	 {
        int t;
		glTexImage2D(GL_PROXY_TEXTURE_2D,0,4,w,h,0,GL_RGBA,GL_UNSIGNED_BYTE,NULL);
		glGetTexLevelParameteriv(GL_PROXY_TEXTURE_2D,0,GL_TEXTURE_WIDTH,&t);
		printf("k %d\n",t);
		if (t != 0) break;
		if (w==1 && h==1) printf("Unable to calculate Tex size");
		if (w>1) w/=2;
		if (h>1) h/=2;
	}
    int* ret = (int*)malloc(sizeof(int)*2);
    ret[0] = w;
    ret[1] = h;
    printf("kk %d %d",w,h);
    return ret;
}
int pow2Size( int n ) {
    int t=1;
    while (t<n) {
        t*=2;
    }
    return t;
}
#else
void setDrawTarget(SDL_Surface* buffer) {
    if (buffer != NULL)
        drawSurface = buffer;
    else
        printf("Unknown buffer \n");
}
SDL_Surface* getBackBuffer() {
    return graphicsScreen;
}
#endif
int loadAnim(char* path, int width, int height) {
	
	return 0;
}
int loadImage(char* path) {
    CPBImage* img = (CPBImage*)malloc(sizeof(CPBImage));
    img->frames = 1;
    SDL_Surface* temp = SDL_LoadBMP(path);
    if (temp == NULL) {
        printf("Could not load image\n");
        return -1;
    }

    #if USEGL
        img->surfaces=(GLuint*)malloc(sizeof(GLuint));
    #else
        img->surfaces=(SDL_Surface**)malloc(sizeof(SDL_Surface));
    #endif
    SDL_SetColorKey(temp, SDL_SRCCOLORKEY, transparentCol);
    SDL_Surface* temp2 = SDL_DisplayFormatAlpha(temp);
    img->width = temp2->w;
    img->height = temp2->h;

    SDL_FreeSurface(temp);
    #if USEGL
        img->surfaces[0] = surface2texture(temp2);
    #else
        img->surfaces[0] = temp2;
    #endif
    return registerImage(img,0);
}

void freeImage(int img) {
    int j;
    for (j=0;j<images[img]->frames;j++) {
        #if USEGL
            glDeleteTextures( 1, &images[img]->surfaces[j] );
        #else
            SDL_FreeSurface(images[img]->surfaces[j]);
        #endif
    }
    free(images[img]);
    images[img] = NULL;
}

void drawImage(int img, int x, int y, int frame) {
    if (validImage(img)) {
        #if USEGL
            glPushMatrix();
            glBindTexture( GL_TEXTURE_2D, images[img]->surfaces[frame] );
            glTranslatef(x,y,0);
            glScalef(scalingx,scalingy,1.0f);
            glRotatef(rotation, 0,0,1);
            drawQuad(0,images[img]->width,images[img]->height);
            glPopMatrix();
        #else
            SDL_Rect rect;
            rect.x=x;
            rect.y=y;
            SDL_BlitSurface(images[img]->surfaces[frame], NULL, drawSurface, &rect);
        #endif
    }
}

int registerImage(CPBImage* img, int start) {
    int i;
    for (i=0;i<maxImages;i++) {
        if (images[i] == NULL) {
            images[i] = img;
            return i;
        }
    }
    maxImages += 32;
    images = (CPBImage**)realloc(images, maxImages);
    return registerImage(img, i);
}

char validImage(int img) {
    if (img>=0 && img < maxImages) {
        return images[img] != NULL;
    } else {
        return 0;
    }
}

void showScreen() {
    #if USEGL
        SDL_GL_SwapBuffers();
        glClear(GL_COLOR_BUFFER_BIT);
        scalingx=1;
        scalingy=1;
        rotation=0;
    #else
        SDL_Flip(graphicsScreen);
        SDL_FillRect(graphicsScreen, 0, SDL_MapRGB(graphicsScreen->format, 0, 0, 0));
    #endif
}






void updateEvent() {
    SDL_Event event;
    isAppTerminate=0;


    while (SDL_PollEvent(&event)) {
        switch (event.type) {
            case SDL_QUIT: {
                isAppTerminate=1;
                break;
            }
            case SDL_KEYUP: {

                break;
            }
        }
    }
    SDL_GetMouseState (&mousePosX,&mousePosY);
}


char appTerminate() {
    return isAppTerminate;
}

char key(int key) {
    return SDL_GetKeyState(NULL)[key];
}
char mouse(int m) {
    return 0;
}
int mouseX() {
    return mousePosX;
}
int mouseY() {
    return mousePosY;
}
int keyEscape() {
    return SDLK_ESCAPE;
}
int keyLeft() {
    return SDLK_LEFT;
}
int keyRight() {
    return SDLK_RIGHT;
}
int keyUp() {
    return SDLK_UP;
}
int keyDown() {
    return SDLK_DOWN;
}
