addition: addition.o
	ld -o addition addition.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64 

addition.o: addition.s
	as -arch arm64 -o addition.o addition.s