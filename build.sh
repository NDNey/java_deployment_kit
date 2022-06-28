#!/usr/bin/env sh

#     Compile the application code [*not* the test code].
#     Compiled .class files are placed in a new subdirectory called 'classes' [-d option].

#     In this example, any third-party library JARs are located in 'lib' and added to the classpath [-classpath option].
#     Remove this -classpath "lib/*" if you're not using any, which results in the following:
#     javac -d classes src/com/yourApp/yourAppName/client/*.java src/com/yourApp/yourAppName/controller/*.java src/com/yourApp/yourAppName/domain/*.java

javac -d classes -classpath "lib/*" src/com/yourApp/yourAppName/client/*.java src/com/yourApp/yourAppName/controller/*.java src/com/yourApp/yourAppName/domain/*.java # you can add more packages in the same way this is jus an example using 3 packages.
 

#     Build the application JAR.
#     This example adds the directory tree of .class files starting at 'classes'.
#     Note that any third-party library JARs are *not* included in your application JAR, 
#     nor are any resourcae files, e.g., config files, data files, text.txt, etc.

jar --create --file yourAppName.jar -C classes .

 


#     Create the Javadoc.
#     The '-package' flag will include non-public classes and all class members except for private ones.
#     Again, any third-party library JARs are located in 'lib' and added to the classpath.
#     And again, remove this -classpath "lib/*" if you're not using any.

#     Running this only makes sense if you've taken the time to write API comments in your code.
#     API (javadoc) comments are important when the "product" is a library for other developers to use.
#     It's not as important when the "product" is a finished application, like with your project.
#     Just leave this commented out if not using.

#     javadoc -d doc --source-path src -classpath "lib/*" -package -windowtitle yourAppName com.yourApp.yourAppName.client com.yourApp.yourAppName.controller com.games.yourAppName.domain