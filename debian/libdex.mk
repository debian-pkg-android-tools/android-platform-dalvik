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
OBJECTS = $(SOURCES:.cpp=.o)
CXXFLAGS += -fPIC
CPPFLAGS += -include android/arch/AndroidConfig.h \
            -I/usr/include/android -I/usr/include/android/nativehelper -I.
LDFLAGS += -shared -Wl,-rpath=/usr/lib/android -Wl,-soname,$(NAME).so.0 \
           -lz -L/usr/lib/android -llog -lziparchive

build: $(SOURCES)
	$(CXX) $^ -o $(NAME).so.0 $(CXXFLAGS) $(CPPFLAGS) $(LDFLAGS)
	ln -s $(NAME).so.0 $(NAME).so

clean:
	$(RM) $(NAME).so*