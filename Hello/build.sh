cpackget init https://www.keil.com/pack/index.pidx
cbuild workspace/Hello/Hello.csolution.yml --packs --toolchain GCC --update-rte

../avh-linux-x86/bin/FVP_Corstone_SSE-300_Ethos-U65 -a ../Hello/out/Hello/CS300/Release/Hello.elf