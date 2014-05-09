# iw
#
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
NO_PKG_CONFIG=y
LOCAL_SRC_FILES := \
    bitrate.c \
    coalesce.c \
    connect.c \
    cqm.c \
    event.c \
    genl.c \
    hwsim.c \
    ibss.c \
    info.c \
    interface.c \
    iw.c \
    link.c \
    mesh.c \
    mpath.c \
    offch.c \
    p2p.c \
    phy.c \
    ps.c \
    reason.c \
    reg.c \
    roc.c \
    scan.c \
    sections.c \
    station.c \
    status.c \
    survey.c \
    util.c \
    wowlan.c \
    version.c \
    android-nl.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/wifi/iw_util \
	external/libnl-headers

LOCAL_CFLAGS := -O2 -g -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
LOCAL_CFLAGS += -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -DCONFIG_LIBNL20
LOCAL_LDFLAGS := -Wl,--no-gc-sections
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_LIBRARIES := libnl_2 libc libstdc++ libm
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE:=iw
include $(BUILD_EXECUTABLE)
