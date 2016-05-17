NAME = dexdump
SOURCES = DexDump.cpp
SOURCES := $(foreach source, $(SOURCES), dexdump/$(source))
CXXFLAGS += -fPIC
CPPFLAGS += -include android/arch/AndroidConfig.h -I/usr/include/android -I.
LDFLAGS += -Wl,-rpath=/usr/lib/$(DEB_HOST_MULTIARCH)/android -L. -ldex

build: $(SOURCES)
	$(CXX) $^ -o $(NAME)/$(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)/$(NAME)
