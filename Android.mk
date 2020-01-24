 ######################################################################
 #
 # Copyright (C) 2012-2013 Intel Mobile Communications GmbH
 # Copyright (C) 2019-2020 Intel Corporation
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
 #####################################################################

LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_HAVE_BLUETOOTH_INTEL_ICNV), true)

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := \
        bt_vendor.cc

LOCAL_C_INCLUDES := \
        $(TOP_DIR)system/bt/hci/include

LOCAL_SHARED_LIBRARIES := \
        liblog \
        libcutils

LOCAL_MODULE := libbt-vendor
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
LOCAL_HEADER_LIBRARIES += libutils_headers

include $(BUILD_SHARED_LIBRARY)

endif # BOARD_HAVE_BLUETOOTH_INTEL_ICNV
