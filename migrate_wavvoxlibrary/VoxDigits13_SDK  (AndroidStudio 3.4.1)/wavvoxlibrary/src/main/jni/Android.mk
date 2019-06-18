# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# wavvoxlibrary .. jni / Android.mk
# updated jm*20190521,20190531,20190612

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)


LOCAL_MODULE    := wavvox-decoder

LOCAL_SRC_FILES := wavvoxNativeApp.c
LOCAL_SRC_FILES += licenseWavvox.c
LOCAL_SRC_FILES += driverGeneration.c
LOCAL_SRC_FILES += driver.c
LOCAL_SRC_FILES += fifo.c
LOCAL_SRC_FILES += filters.c
LOCAL_SRC_FILES += process.c
LOCAL_SRC_FILES += Decode.c
LOCAL_SRC_FILES += buildPacket.c
LOCAL_SRC_FILES += buildPacketEmbed.c
LOCAL_SRC_FILES += campaignCodeText.c
LOCAL_SRC_FILES += convertTextCode.c
LOCAL_SRC_FILES += transmitSymbol.c
LOCAL_SRC_FILES += transmit.c
# srcDir "jni"


LOCAL_CFLAGS    += -std=c99
LOCAL_CFLAGS    += -O3
LOCAL_CFLAGS    += -Ofast
# LOCAL_CFLAGS  += -Wno-error=format-security
# LOCAL_CFLAGS  += -mfloat-abi=softfp
LOCAL_CFLAGS    += -mfpu=neon
# LOCAL_CFLAGS  += -g

# LOCAL_C_INCLUDES := gdb.setup
# LOCAL_WHOLE_STATIC_LIBRARIES :=  true


LOCAL_LDLIBS := -llog -landroid


# include $(BUILD_STATIC_LIBRARY)
include $(BUILD_SHARED_LIBRARY)
