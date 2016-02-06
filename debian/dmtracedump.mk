NAME = dmtracedump
SOURCES = TraceDump.c
SOURCES := $(foreach source, $(SOURCES), tools/dmtracedump/$(source))
CFLAGS += -fPIC
CPPFLAGS += -include android/arch/AndroidConfig.h

build: $(SOURCES)
	$(CC) $^ -o $(NAME) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)