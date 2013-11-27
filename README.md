# Example of a basic native iOS plugin for using PhoneGap 3.0.


## Installation

- Make sure that you have [Node](http://nodejs.org/) and [PhoneGap CLI](https://github.com/mwbrooks/phonegap-cli) installed on your machine.
- Create your PhoneGap example app

```bash
phonegap create com.siteforum.TestApp && cd $_
```

- Add the plugin to it

```bash
phonegap local plugin add https://github.com/tueran/BasicPlugin.git
```

- Open `index.html and add a button

```html
<button onclick="basicPlugin.sayHello();">Say hello to your plugin!</button>
```

- Register plugin within `config.xml` of your app

```xml
<feature name="BasicPlugin">
    <param name="ios-package" value="BasicPlugin" />
</feature>
```

- Build and run app

```bash
phonegap run ios
```

