# triangle_appium
Triangle App automated using Ruby and Appium

### Mac Environment

```
a. Install Homebrew:
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"r
   
b. Install JDK for Mac:
   http://www.oracle.com/technetwork/java/javase/downloads/index.html

c. Installing and Setting up rbenv:
   brew install rbenv
   echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
   rbenv install -l
   rbenv install 2.6.2
   rbenv local 2.6.2
   rbenv global 2.6.2

d. Install Android Studio
   https://developer.android.com/studio/index.html?hl=pt-br
   
e. Install Appium Desktop
   http://appium.io/          => Click to download the newest version for your OS

   OR

   brew install node          => To install nodeJs
   npm install -g appium      => To install appium server

```

### JAVA environment variables
```

open ~/.bash_profile

Fill it with:
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH 
```

### Android environment variables

```

open ~/.bash_profile

PFill it with:
export ANDROID_HOME=/Users/<user>/Library/Android/sdk
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/platform-tools/adb:$PATH
export PATH=$ANDROID_HOME/emulator/:$PATH

NOTE: Change the <user> for your user
```

### Install and Manage the Ruby gems

```
gem install bundler
```

### Running the project:

```
1. Clone the project:
   git clone https://github.com/vtrmartinez/triangle_appium

2. Access the project folder and execute the command:
   bundle

3. Run Appium Server: 
   appium &

   or

   Open the Appium Desktop and run it
   
4. Open your emulator, for example:
    The emulator created by Android Studio

5. Run the scenarios of the project:
   cucumber
```

<br>

### Tags:

We use the tags to run some specific group of test scenarios. We use the syntax " -t @tag_name"

Example:

```
$ cucumber -t @triangle
```

#### All Tags
```
@triangle                    - Run all the scenarios of triangle app
@empty_form                  - Run the scenario to send a empty request
@equilateral_triangle        - Run the scenario to test the equilateral side of the triangle
@isosceles_triangle          - Run the scenario to test the isosceles side of the triangle
@scalene_triangle            - Run the scenario to test the scalene side of the triangle
```