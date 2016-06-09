CFLAGS += -Werror -Wall
all: test mypam.so

clean:
	$(RM) test mypam.so *.o

gate_pam.so: src/mypam.c
	$(CC) $(CFLAGS) -fPIC -shared -Xlinker -x -o $@ $< -lcurl

check_gate: src/test.c
	$(CC) $(CFLAGS) -o $@ $< -lpam -lpam_misc
