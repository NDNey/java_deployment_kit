#!/usr/bin/env sh

#     In this example, any third-party library JARs are located in 'lib' and added to the classpath [-classpath option].
#     Remove this "lib/*" entry from the classpath if you're not using any, which results in the following:
#     java -classpath yourAppName.jar and pakage where Main is ex: com.yourApp.yourAppName.client.Main

#     Note that your application JAR stays on the classpath, regardless of whether you're using additional libraries or not.

java -classpath yourAppName.jar:"lib/*" com.yourApp.yourAppName.client.Main #pakage where Main is ex: com.yourApp.yourAppName.client.Main