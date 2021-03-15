#ifndef MAP_VIEWER_WINDOW_H
#define MAP_VIEWER_WINDOW_H


#include <iostream>
#include <glad/glad.h>
#include <GLFW/glfw3.h>


#include "Shader.h"

class Window {
public:
    Window();

    ~Window();

    void Render();
    void Temp();
    void LoadShader(const char* vertexPath, const char* fragmentPath);
    void VertexSetup();
    void TextureSetup();

private:


    static void framebuffer_size_callback(GLFWwindow* window, int width, int height);
    static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods);

    static void processInput(GLFWwindow *window);

    const char *vertexShaderSource = "#version 330 core\n"
                                     "layout (location = 0) in vec3 aPos;\n"
                                     "void main()\n"
                                     "{\n"
                                     "   gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);\n"
                                     "}\0";
    const char *fragmentShaderSource = "#version 330 core\n"
                                       "out vec4 FragColor;\n"
                                       "void main()\n"
                                       "{\n"
                                       "   FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);\n"
                                       "}\n\0";

    const int SCR_WIDTH = 800;
    const int SCR_HEIGHT = 800;

    GLFWwindow* window;
    unsigned int shaderProgram;
    unsigned int VBO, VAO, EBO;
    Shader* ourShader;
    unsigned int texture;

};


#endif //MAP_VIEWER_WINDOW_H
