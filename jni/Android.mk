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

# Build instructions for Mac OS X:
# - Download the master branch of https://github.com/echonest/echoprint-codegen and place in the jni folder.
# - Download the up to date version of http://www.boost.org/ and place in place in the jni folder.
# - Update the configuration below to the correct version of Boost.
# - Download and install the latest version of the Android NDK from https://developer.android.com/tools/sdk/ndk/.
# - Open Terminal and go to the jni folder (e.g. cd ~/EchoprintForAndroid/jni ).
# - Run ndk-build from the Android NDK (e.g. /Applications/android-ndk-r10e/ndk-build ).
# - The generated library will be placed in libs/armeabi/libechoprint-jni.so.
# - Move the generated library into the correct folder in the Android project.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE     := echoprint-jni

LOCAL_SRC_FILES  := AndroidCodegen.cpp \
				    echoprint-codegen-master/src/Codegen.cpp \
				    echoprint-codegen-master/src/Whitening.cpp \
				    echoprint-codegen-master/src/SubbandAnalysis.cpp \
				    echoprint-codegen-master/src/MatrixUtility.cpp \
				    echoprint-codegen-master/src/Fingerprint.cpp \
				    echoprint-codegen-master/src/Base64.cpp \
				    echoprint-codegen-master/src/AudioStreamInput.cpp \
				    echoprint-codegen-master/src/AudioBufferInput.cpp
					
LOCAL_LDLIBS     := -llog\
				    -lz					
					
LOCAL_C_INCLUDES := ./echoprint-codegen-master/src \
					./boost_1_58_0				

LOCAL_CPPFLAGS   += -fexceptions

include $(BUILD_SHARED_LIBRARY)
