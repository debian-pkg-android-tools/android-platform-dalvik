NAME = hprof-conv
SOURCES = HprofConv.c
SOURCES := $(foreach source, $(SOURCES), tools/hprof-conv/$(source))
CFLAGS += -fPIC
CPPFLAGS += -include android/arch/AndroidConfig.h

build: $(SOURCES)
	$(CC) $^ -o $(NAME) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)