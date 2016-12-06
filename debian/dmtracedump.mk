NAME = dmtracedump
SOURCES = tracedump.cc
SOURCES := $(foreach source, $(SOURCES), debian/additionalSrc/dmtracedump/$(source))
CPPFLAGS += -Idebian/additionalSrc/dmtracedump

build: $(SOURCES)
	$(CXX) $^ -o $(NAME) $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)

clean:
	$(RM) $(NAME)