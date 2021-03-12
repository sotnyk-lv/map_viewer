#ifndef MAP_VIEWER_WINDOW_H
#define MAP_VIEWER_WINDOW_H

#include <iostream>
#include <glad/glad.h>
#include <GLFW/glfw3.h>

class Window {
public:
    Window();

    ~Window();

    void Render();
    void Temp();

private:
    GLFWwindow* window;

    static void framebuffer_size_callback(GLFWwindow* window, int width, int height);
    static void processInput(GLFWwindow *window);

};


#endif //MAP_VIEWER_WINDOW_H
