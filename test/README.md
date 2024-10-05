
../out/thinc t01.thin --c --out t01.c && clang t01.c print.c -o t01 && ./t01

../out/thinc t01.thin --wasm --out t01.wasm

npm install -g @irongeek/wabt

wasm2wat t01.wasm -o t01.wat
