#include <iostream>

#include "Window.h"
//#include "TileLoader.h"
//#include "libs/curlpp/include/curlpp/Exception.hpp"

int main()
{
    Window window;

//    try {
//        TileLoader loader("https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/");
//        loader.GetTile(1, 1, 0);
//    }
//    catch( cURLpp::RuntimeError &e )
//    {
//        std::cout << e.what() << std::endl;
//    }
//    catch( cURLpp::LogicError &e )
//    {
//        std::cout << e.what() << std::endl;
//    }


    window.Temp();
    window.Render();

    return 0;
}
