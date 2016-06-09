CFLAGS += -Werror -Wall
all: check_gate gate_pam.so

clean:
	$(RM) check_gate gate_pam.so *.o

gate_pam.so: src/gate_pam.c
	$(CC) $(CFLAGS) -fPIC -shared -Xlinker -x -o $@ $< -lcurl

check_gate: src/check_gate.c
	$(CC) $(CFLAGS) -o $@ $< -lpam -lpam_misc
