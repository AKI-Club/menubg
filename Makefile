# menubg makefile
MENUBG_TARGET := menubg
MENUBG_DEBUG_TARGET := menubg_d

MENUBG_SRC_FILES := menubg.c lodepng.c

CFLAGS := -Wall -Wextra -s -O2
CFLAGS_DEBUG := -Wall -Wextra -g -Og -DDEBUG

default: release

all: release debug

release: $(MENUBG_TARGET)

debug: $(MENUBG_DEBUG_TARGET)

$(MENUBG_TARGET): $(MENUBG_SRC_FILES)
	$(CC) $(CFLAGS) $^ $(LDFLAGS) -o $@

$(MENUBG_DEBUG_TARGET): $(MENUBG_SRC_FILES)
	$(CC) $(CFLAGS_DEBUG) $^ $(LDFLAGS) -o $@

clean:
	rm -f $(MENUBG_TARGET) $(MENUBG_DEBUG_TARGET)

.PHONY: all clean default release debug
