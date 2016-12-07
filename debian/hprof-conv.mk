NAME = hprof-conv
SOURCES = HprofConv.c
SOURCES := $(foreach source, $(SOURCES), tools/hprof-conv/$(source))

build: $(SOURCES)
	mkdir --parents debian/out
	$(CC) $^ -o debian/out/$(NAME) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS)