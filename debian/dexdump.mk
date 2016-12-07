NAME = dexdump
SOURCES = DexDump.cpp
SOURCES := $(foreach source, $(SOURCES), dexdump/$(source))
CPPFLAGS += -I/usr/include/android -I.
LDFLAGS += -Wl,-rpath=/usr/lib/$(DEB_HOST_MULTIARCH)/android -Ldebian/out -ldex

build: $(SOURCES)
	mkdir --parents debian/out
	$(CXX) $^ -o debian/out/$(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)