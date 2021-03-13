#include <iostream>

#include "Window.h"
#include "TileLoader.h"
//#include "libs/curlpp/include/curlpp/Exception.hpp"

int main()
{
    Window window;

    TileLoader loader("https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/");
    loader.GetTile(1, 1, 0);
    loader.GetTile(1, 0, 0);
    loader.GetTile(1, 0, 1);
    loader.GetTile(1, 1, 1);
    loader.GetTile(0, 0, 0);

    window.Temp();
    window.Render();

    return 0;
}
