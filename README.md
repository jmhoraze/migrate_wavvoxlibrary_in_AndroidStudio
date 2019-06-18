# migrate_wavvoxlibrary_in_AndroidStudio
Android Studio: migrating libraries with C/C++ from gradle-experimental with Model plugin to gradle + CMake / ndkBuild

<h2>
This was then …

For our technology we have a portfolio of c programs working in Windows (VisualStudio), iOS (Xcode), Android (Android Studio).
Available as SDK in form of a library for Xcode and Android development.  (Also using the respective audio interface, especially, recording from the devices’ microphone(s).)
Everything worked out nicely, and for Windows and iOS there was no problem migrating said library into 64 bit with the advent of iOS 10 and newer devices, say, starting with iPod Touch gen.6.
It became a bit of work with Android… 

In the earlier days with Android Studio (before that we had Eclipse and Android enhancements)  we were using the “model” plugin available in gradle-experimental for the NDK and JNI features.  Everything was working nicely.  
Now Android Studio 2.3.3 and gradle-experimental:0.9.3. 

But then it turned out we could not build our c programs in 64 bit (using abifilters “ARM64-8a”), due to missing hooks: 
Known limitations for the Gradle component “model” implementation, “No support for using a NDK modules like cpu_features” and “No Support for integrating external build systems”.

OK, so I started updating the project(s) to (here) Android Studio v.3.4.1.   However, to my dismay, using the latest gradle-experimental:0.11.1 I got pages of exceptions reports during Gradle sync!  The offending line, calling the “model” plugin: 
apply plugin: 'com.android.model.library'
I filed with Google issue # 133092980 (https://issuetracker.google.com/issues/133092980)
Nevertheless, between reporting a problem and eventually getting a solution could mean … well,  days?  Months?  Never?
Even though the Gradle blog “State and future of the Gradle Software Model” (https://blog.gradle.org/state-and-future-of-the-gradle-software-model) suggests work is being done, that blog is as of August 2017, and Google is actually encouraging to migrate away from the “model” plugin, and none of the often great sample projects make use of “model”. 

<h2>
This is now …

....

see:
<h5>
  "Android Studio_ migrating libraries with C_C++ from gradle-experimental with Model plugin 
        to gradle + CMake _ ndkBuild.pdf"
</h5>




jm*20190617
