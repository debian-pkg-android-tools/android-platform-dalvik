NAME = dmtracedump
SOURCES = TraceDump.c
SOURCES := $(foreach source, $(SOURCES), tools/dmtracedump/$(source))

build: $(SOURCES)
	$(CC) $^ -o $(NAME) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)