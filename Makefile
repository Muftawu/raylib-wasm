game.wasm: game.c
	clang --target=wasm32 -I./raylib/src --no-standard-libraries -Wl,--no-entry -Wl,--allow-undefined -Wl,--export-all -o game.wasm game.c

wasm.code: game.wasm
	wasm2wat game.wasm -o outputs/human_readable_wasm.wat

game.native: game.c
	clang -I./raylib/src game.c ./raylib/src/libraylib.a -lGL -lpthread -ldl -lrt -lX11 -lm -o game.native
