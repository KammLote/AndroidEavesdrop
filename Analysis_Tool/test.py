string = '<?xml version="1.0" encoding="utf-8" standalone="no"?><manifest xmlns:android="http://schemas.android.com/apk/res/android" android:installLocation="preferExternal" android:theme="@android:style/Theme.NoTitleBar" package="com.dumadugames.honeyquest" platformBuildVersionCode="25" platformBuildVersionName="7.1.1">'
print(string)
string=string[string.find('package="'):]
string=string[string.find('"'):]
string=string[:string.find('" ')][1:]

print(string)
