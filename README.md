# java_deployment_kit

### This is an assembly kit to deploy Java Apps.

This will help you to build a deployable / runtime artifact (JAR).

You will be able to run your app from a command prompt, outside the IDE, using the application JAR.

Included in this package is a complete kit on how to deploy a Java application. It includes build and run scripts, as well as how to add resource files and libraries.

### Scripts:
  build -> compiles application code, builds JAR, generates Javadoc(If you want to document your app).<br>
  run   -> runs application.

You will find a pairs of scripts for Windows (.cmd) and unix (.sh), which includes macOS.
These scripts are run *outside* the IDE, i.e., at a command prompt.

#### STEPS

<details>
<summary>Start</summary>
<pre>
1 Create a staging area for your project, *away* from any IDE or other folders.
   Perhaps C:\user\files\STAGE\yourAppName

2 Copy the appropriate build and run scripts (.cmd for windows or .sh for unix) to that location.

3 Copy select items from your project directory into the staging area.
    src/       source tree                        [test code not needed,  this is a product build]
    lib/       third-party library JARs (if any)  [JUnit JARs not needed, this is a product build]
    other/     other files or folders used by your application (if any), e.g., a 'config' folder, etc.
  
   Note that it is entirely possible that all you have is:
    src/       perfectly fine if you don't use any external libraries or have any subfolders

4 Open a command prompt in your staging directory.
  Important: Read the comments in both scripts (build and run) and adjust to your needs.

5 Once you have it built and running successfully, you can trim away unneeded files:
    build script
    src/
    classes/   

6 Lastly, create the deployment bundle, which is just a zip file of the staging directory,
   after you've trimmed it in step 5.  Name the file with your app name and version or similar.
   you can add 'dist' at the end of the name just indicates that this is a "distribution" of your software.
</pre>
</details>

---

### Final note: 
This process is normally done via build tools such as Maven or Gradle, but we're doing it this way to see how it's done with the bare metal JDK tools anyway.
