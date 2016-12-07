NAME = dmtracedump
SOURCES = tracedump.cc
SOURCES := $(foreach source, $(SOURCES), debian/additionalSrc/dmtracedump/$(source))
CPPFLAGS += -Idebian/additionalSrc/dmtracedump

build: $(SOURCES)
	mkdir --parents debian/out
	$(CXX) $^ -o debian/out/$(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)