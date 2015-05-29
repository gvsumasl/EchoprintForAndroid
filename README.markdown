# Android Echoprint

## Code from the MASL blog post available [here](http://masl.cis.gvsu.edu/2012/01/25/android-echoprint/)

[Echoprint](http://echoprint.me) is an open source library to fingerprint Audio, in this repo you'll find the code needed to make it run under Android.

This repo contains 3 folders:

`EchoprintLib` Is an Eclipse project with an already compiled native Echoprint library that you can include in your own projects as an external library project.

`EchoprintTest` Is a sample Eclipse project that uses the EchoprintLib library.

`jni` Contains the NDK/jni code needed to compile the native library yourself. You'll need to download the Echoprint source, as well as the Boost libraries in order to compile it.

Enjoy!

## Update 29-05-2015

The following major changes have been made to the project:
* Updated JNI library generated based on Android NDK Revision 10e, Boost 1.58.0 and latest echoprint-codegen C++ library.
* Eclipse projects imported into Android Studio 1.2.1.1 and configured to work with latest Android SDK (level 22).
* Removed the Echonest API calls because it is no longer available (https://developer.echonest.com/forums/thread/3650). Now using the MooMash API (http://www.mooma.sh/api.html).

## License

Echoprint4Android is licensed under the MIT License:

  Copyright (c) 2011 2012 Grand Valley State University (http://masl.cis.gvsu.edu/)

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.
