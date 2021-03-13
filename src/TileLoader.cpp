#include "TileLoader.h"

TileLoader::TileLoader(const std::string& basic_url) {
    curlpp::Cleanup myCleanup;
    api_url = basic_url;
    LoadAccessToken();
}

TileLoader::TileLoader(std::string &basic_url) {
    curlpp::Cleanup myCleanup;
    api_url = std::move(basic_url);
    LoadAccessToken();
}

void TileLoader::GetTile(unsigned int zoom, unsigned int x, unsigned int y) {
    std::string ready_url = api_url +
            std::to_string(zoom) + "/" +
            std::to_string(x) + "/" +
            std::to_string(y) + "?access_token=" +
            token;
//    curlpp::options::Url myUrl(ready_url);
//    curlpp::Easy myRequest;
//    myRequest.setOpt(myUrl);
//    myRequest.perform();

    if (!std::filesystem::exists("img"))
    {
        std::filesystem::create_directory("img");
    }

    std::ofstream img_file;
    img_file.open("img/" + std::to_string(zoom) + "-" + std::to_string(x) + "-" + std::to_string(y) + ".png");
    img_file << curlpp::options::Url(ready_url);
}

void TileLoader::LoadAccessToken() {
    std::cout << std::string(TOKEN_PATH) << std::endl;
    if (!std::filesystem::exists(std::string(TOKEN_PATH)))
    {
        std::cout << "Cannot find file with mapbox token" << std::endl;
        throw std::runtime_error("Cannot find file with mapbox token");
    }
    std::ifstream token_stream(std::string(TOKEN_PATH));
    token_stream >> token;
    token_stream.close();
}
