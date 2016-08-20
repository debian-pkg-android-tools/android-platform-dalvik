NAME = dexdump
SOURCES = DexDump.cpp
SOURCES := $(foreach source, $(SOURCES), dexdump/$(source))
CPPFLAGS += -I/usr/include/android -I.
LDFLAGS += -Wl,-rpath=/usr/lib/$(DEB_HOST_MULTIARCH)/android -L. -ldex

build: $(SOURCES)
	$(CXX) $^ -o $(NAME)/$(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)/$(NAME)
