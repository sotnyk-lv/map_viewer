#include "Window.h"

#define STB_IMAGE_IMPLEMENTATION
#include <stb_image.h>

Window::Window() {

    // glfw: initialize and configure
    // ------------------------------
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // glfw window creation
    // --------------------
    window = glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "map viewer", nullptr, nullptr);
    if (window == nullptr)
    {
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        throw std::runtime_error("Failed to create GLFW window");
    }

    // create window context
    glfwMakeContextCurrent(window);

    glfwSetInputMode(window, GLFW_STICKY_KEYS, 1);

    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSetKeyCallback(window, key_callback);

    // glad: load all OpenGL function pointers
    // ---------------------------------------
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        throw std::runtime_error("Failed to initialize GLAD");
    }

}

void Window::VertexSetup() {
    // set up vertex data (and buffer(s)) and configure vertex attributes
    // ------------------------------------------------------------------
    float vertices[] = {
            // positions          // colors           // texture coords
            0.8f,  0.8f, 0.0f,   1.0f, 0.0f, 0.0f,   1.0f, 0.0f, // top right
            0.8f, -0.8f, 0.0f,   0.0f, 1.0f, 0.0f,   1.0f, 1.0f, // bottom right
            -0.8f, -0.8f, 0.0f,   0.0f, 0.0f, 1.0f,   0.0f, 1.0f, // bottom left
            -0.8f,  0.8f, 0.0f,   1.0f, 1.0f, 0.0f,   0.0f, 0.0f  // top left
    };
    unsigned int indices[] = {
            3, 1, 0, // first triangle
            3, 2, 1  // second triangle
    };
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    // position attribute
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), nullptr);
    glEnableVertexAttribArray(0);
    // color attribute
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);
    // texture coord attribute
    glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)(6 * sizeof(float)));
    glEnableVertexAttribArray(2);
}

void Window::TextureSetup() {
    // load and create a texture
    // -------------------------

    glGenTextures(1, &texture);
    glBindTexture(GL_TEXTURE_2D, texture); // all upcoming GL_TEXTURE_2D operations now have effect on this texture object
    // set the texture wrapping parameters
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);	// set texture wrapping to GL_REPEAT (default wrapping method)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    // set texture filtering parameters
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    // load image, create texture and generate mipmaps
    int width, height, nrChannels;
    // The FileSystem::getPath(...) is part of the GitHub repository so we can find files on any IDE/platform; replace it with your own image path.
    unsigned char *data = stbi_load(std::string("img/0-0-0.png").c_str(), &width, &height, &nrChannels, 0);
    if (data)
    {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
        glGenerateMipmap(GL_TEXTURE_2D);
    }
    else
    {
        std::cout << "Failed to load texture" << std::endl;
    }
    stbi_image_free(data);
}

void Window::LoadShader(const char* vertexPath, const char* fragmentPath) {
    // build and compile our shader zprogram
    // ------------------------------------
    auto *shader = new Shader(vertexPath, fragmentPath);
    ourShader = shader;
}

Window::~Window() {
    // optional: de-allocate all resources once they've outlived their purpose:
    // ------------------------------------------------------------------------
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glDeleteBuffers(1, &EBO);

    // glfw: terminate, clearing all previously allocated GLFW resources.
    // ------------------------------------------------------------------
    glfwTerminate();
}

void Window::Temp() {

}

void Window::Render() {

    // render loop
    // -----------
    while (!glfwWindowShouldClose(window))
    {
        // input
        // -----
        processInput(window);

        // render
        // ------
        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        // bind Texture
        glBindTexture(GL_TEXTURE_2D, texture);

        // render container
        ourShader->use();
        glBindVertexArray(VAO);
        glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, nullptr);

        // glfw: swap buffers and poll IO events (keys pressed/released, mouse moved etc.)
        // -------------------------------------------------------------------------------
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
}

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
// ---------------------------------------------------------------------------------------------
void Window::framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and
    // height will be significantly larger than specified on retina displays.
    glViewport(0, 0, width, height);
}

void Window::processInput(GLFWwindow *window)
{
    if(glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
        glfwSetWindowShouldClose(window, true);
    }
//    else if(glfwGetKey(window, GLFW_KEY_MINUS) == GLFW_PRESS || glfwGetKey(window, GLFW_KEY_KP_SUBTRACT) == GLFW_PRESS) {
//        std::cout << "-" << std::endl;
//    }
//    else if(
//            (glfwGetKey(window, GLFW_KEY_EQUAL) == GLFW_PRESS &&
//            (glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS || glfwGetKey(window, GLFW_KEY_RIGHT_SHIFT) == GLFW_PRESS))
//            || glfwGetKey(window, GLFW_KEY_KP_ADD) == GLFW_PRESS) {
//        std::cout << "+" << std::endl;
//    }
//    else if(glfwGetKey(window, GLFW_KEY_RIGHT) == GLFW_PRESS) {
//        std::cout << "->" << std::endl;
//    }
//    else if(glfwGetKey(window, GLFW_KEY_LEFT) == GLFW_PRESS) {
//        std::cout << "<-" << std::endl;
//    }
//    else if(glfwGetKey(window, GLFW_KEY_DOWN) == GLFW_PRESS) {
//        std::cout << "v" << std::endl;
//    }
//    else if(glfwGetKey(window, GLFW_KEY_UP) == GLFW_PRESS) {
//        std::cout << "^" << std::endl;
//    }

}

void Window::key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (
            (key == GLFW_KEY_MINUS || key == GLFW_KEY_KP_SUBTRACT)
            && action == GLFW_PRESS) {
        std::cout << "-" << std::endl;
    }
    else if (
            (key == GLFW_KEY_EQUAL && (glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS || glfwGetKey(window, GLFW_KEY_RIGHT_SHIFT))
            || key == GLFW_KEY_KP_ADD)
            && action == GLFW_PRESS) {
        std::cout << "+" << std::endl;
    }
    else if (key == GLFW_KEY_RIGHT && action == GLFW_PRESS) {
        std::cout << "->" << std::endl;
    }
    else if (key == GLFW_KEY_LEFT && action == GLFW_PRESS) {
        std::cout << "<-" << std::endl;
    }
    else if (key == GLFW_KEY_UP && action == GLFW_PRESS) {
        std::cout << "^" << std::endl;
    }
    else if (key == GLFW_KEY_DOWN && action == GLFW_PRESS) {
        std::cout << "v" << std::endl;
    }
}

