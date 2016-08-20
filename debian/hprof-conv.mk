NAME = hprof-conv
SOURCES = HprofConv.c
SOURCES := $(foreach source, $(SOURCES), tools/hprof-conv/$(source))

build: $(SOURCES)
	$(CC) $^ -o $(NAME) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)