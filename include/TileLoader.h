#ifndef MAP_VIEWER_TILELOADER_H
#define MAP_VIEWER_TILELOADER_H

#include <string>
#include <filesystem>
#include <fstream>

#include <curlpp/cURLpp.hpp>
#include <curlpp/Easy.hpp>
#include <curlpp/Options.hpp>

#define TOKEN_PATH "./userinfo/mapbox"

class TileLoader {
public:
    TileLoader(const std::string& basic_url);
    TileLoader(std::string& basic_url);

    void GetTile(unsigned int zoom, unsigned int x, unsigned int y);

private:
    void LoadAccessToken();


    std::string api_url;
    std::string token;
};


#endif //MAP_VIEWER_TILELOADER_H
