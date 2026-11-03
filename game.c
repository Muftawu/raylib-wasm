#include "raylib.h"

int main() {

  InitWindow(800, 600, "Hello, from WebAssembly");
  SetTargetFPS(60);

  while (!WindowShouldClose()) {
    BeginDrawing();
    ClearBackground(RED);

    EndDrawing();
  }

  CloseWindow();
}
