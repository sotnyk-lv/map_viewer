#include <iostream>

#include "TileLoader.h"
#include <curlpp/cURLpp.hpp>

int main()
{

    try {
        TileLoader loader("https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/");
//        loader.GetTile(1, 1, 0);
    }
    catch( cURLpp::RuntimeError &e )
    {
        std::cout << e.what() << std::endl;
    }
    catch( cURLpp::LogicError &e )
    {
        std::cout << e.what() << std::endl;
    }

    return 0;
}
