#include <iostream>

#include "Window.h"
#include "TileLoader.h"

int main()
{
    Window window;

//    TileLoader loader("https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/");
//    loader.GetTile(1,1,0);

    window.Temp();
    window.Render();

    return 0;
}
