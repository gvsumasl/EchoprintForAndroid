# Copyright (C) 2010 The Android Open Source Project
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
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    :=echoprint-jni

LOCAL_SRC_FILES :=AndroidCodegen.cpp \
				/codegen/src/Codegen.cpp \
				/codegen/src/Whitening.cpp \
				/codegen/src/SubbandAnalysis.cpp \
				/codegen/src/MatrixUtility.cpp \
				/codegen/src/Fingerprint.cpp \
				/codegen/src/Base64.cpp \
				/codegen/src/AudioStreamInput.cpp \
				/codegen/src/AudioBufferInput.cpp
					
LOCAL_LDLIBS    := -llog\
					-lz					
LOCAL_C_INCLUDES :=/Users/alex/Desktop/GVSU/MASLEchoPrint/jni/codegen/src \
					/Users/alex/Desktop/GVSU/MASLEchoPrint/jni/boost_1_47_0				

include $(BUILD_SHARED_LIBRARY)
