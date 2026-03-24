# OpenGL macOS Project Template

A professional, minimalist starter template for OpenGL development on macOS using **GLFW**, **GLAD**, and **GLM**.

## 1. Project Structure
The project follows a standard C++ organization to keep headers, source code, and libraries separated.

```text
OpenGL-Template/
├── CMakeLists.txt          # Build configuration
├── include/                # Header files (.h, .hpp)
│   ├── glad/               # OpenGL loader headers
│   │   └── glad.h
│   ├── GLFW/               # Window management headers
│   │   ├── glfw3.h
│   │   └── glfw3native.h
│   ├── KHR/                # Khronos platform headers
│   │   └── khrplatform.h
│   └── glm/                # Math library (Header-only)
├── src/                    # Source files (.cpp, .c)
│   ├── main.cpp            # Your application logic
│   └── glad.c              # Glad implementation
├── build/                  # Compiled binaries (auto-generated)
└── README.md               # Project documentation
```

## 2. Prerequisites
This setup uses **Homebrew** to manage libraries. Run the following command to ensure you have the necessary tools:

```bash
brew install cmake glfw glm
```

## 3. Build Instructions (Terminal)
Always perform an **out-of-source build** to keep your project directory clean.

### Step 0.5: Clean up build directory if it exists
Navigate to your project root in the terminal and run:
```bash
rm -rf build
```
### Step 1: Create the Build Directory
Navigate to your project root in the terminal and run:
```bash
mkdir build
cd build
```

### Step 2: Configure with CMake
This step generates the build files. On Apple Silicon (M1/M2/M3), use the prefix path hint:
```bash
cmake -DCMAKE_PREFIX_PATH=/opt/homebrew ..
```

### Step 3: Compile the Code
```bash
make
```

### Step 4: Run the Application
```bash
./app
```

## 4. Troubleshooting
* **Header Not Found:** Ensure your `#include` lines in `main.cpp` look like this:
    * `#include <glad/glad.h>`
    * `#include <GLFW/glfw3.h>`
* **macOS Deprecation Warnings:** These are expected. The `GL_SILENCE_DEPRECATION` flag in `CMakeLists.txt` is already set to hide these.
