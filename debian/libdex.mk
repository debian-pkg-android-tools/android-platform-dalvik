NAME = libdex
SOURCES = CmdUtils.cpp \
          DexCatch.cpp \
          DexClass.cpp \
          DexDataMap.cpp \
          DexDebugInfo.cpp \
          DexFile.cpp \
          DexInlines.cpp \
          DexOptData.cpp \
          DexOpcodes.cpp \
          DexProto.cpp \
          DexSwapVerify.cpp \
          DexUtf.cpp \
          InstrUtils.cpp \
          Leb128.cpp \
          OptInvocation.cpp \
          sha1.cpp \
          SysUtil.cpp
SOURCES := $(foreach source, $(SOURCES), libdex/$(source))
CPPFLAGS += -I/usr/include/android -I/usr/include/android/nativehelper -I.
LDFLAGS += -shared -Wl,-rpath=/usr/lib/$(DEB_HOST_MULTIARCH)/android -Wl,-soname,$(NAME).so.0 \
           -lz -L/usr/lib/$(DEB_HOST_MULTIARCH)/android -llog -lziparchive

build: $(SOURCES)
	mkdir --parents debian/out
	$(CXX) $^ -o debian/out/$(NAME).so.0 $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)
	ln -s $(NAME).so.0 debian/out/$(NAME).so