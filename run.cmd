@echo off

rem   In this example, any third-party library JARs are located in 'lib' and added to the classpath [-classpath option].
rem   Remove this "lib\*" entry from the classpath if you're not using any, which results in the following:
rem   java -classpath yourAppName.jar and pakage where Main is ex: com.yourApp.yourAppName.client.Main

rem   Note that your application JAR stays on the classpath, regardless of whether you're using additional libraries or not.

java -classpath yourAppName.jar;"lib\*" com.yourApp.yourAppName.client.Main rem pakage where Main is ex: com.yourApp.yourAppName.client.Main