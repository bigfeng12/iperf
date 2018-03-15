LOCAL_PATH:=$(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES:=src

LOCAL_SRC_FILES:=\
        src/cjson.c \
        src/iperf_api.c \
        src/iperf_error.c \
        src/iperf_client_api.c \
        src/iperf_locale.c \
        src/iperf_server_api.c \
        src/iperf_tcp.c \
        src/iperf_udp.c \
        src/iperf_util.c \
        src/main.c \
        src/net.c \
        src/tcp_info.c \
        src/tcp_window_size.c \
        src/timer.c \
        src/units.c

LOCAL_CFLAGS:=-O2 -g
#LOCAL_CFLAGS+=-DLINUX
LOCAL_CFLAGS += -fPIE

# gold in binutils 2.22 will warn about the usage of mktemp
LOCAL_LDFLAGS += -Wl,--no-fatal-warnings
LOCAL_LDFLAGS += -fPIE -pie

LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=iperf3

include $(BUILD_EXECUTABLE)
