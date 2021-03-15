#include <iostream>

#include "Window.h"
#include "TileLoader.h"

int main()
{
    Window window;
    const char vertexPath[] = "textures/4.1.texture.vs", fragmentPath[] = "textures/4.1.texture.fs";
    window.LoadShader(vertexPath, fragmentPath);
    window.VertexSetup();
    window.TextureSetup();

//    TileLoader loader("https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/");
//    loader.GetTile(1, 1, 0);
//    loader.GetTile(1, 0, 0);
//    loader.GetTile(1, 0, 1);
//    loader.GetTile(1, 1, 1);
//    loader.GetTile(0, 0, 0);

    window.Render();

    return 0;
}