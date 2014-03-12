# Plview

plist viewer for iOS Simulator. You can get contents of UserDefaults by json format.

## Installation

```sh
$ gem install plview
```

## Usage

### Print contents of UserDefaults

You need to specify iOS version and your app name.

```sh
$ plview -v 7.0 -a APP_NAME
{"key":"value", ...}
```

### Options

```sh
$ plview -h
Usage: plist.rb [options]
    -v, --version          iOS Version
    -a, --application      App name
    -p, --plist            Plist name
        --versions         Print all available iOS versions
        --apps             Print all installed applications
        --plists           Print all plists for specified app
        --path             Print full path for (version|app|plist)
    -h, --help             Display this help message.
```

When you use plview in other scripts, `--path` option would be useful. It returns directory path for specified version or app or plist.

```sh
$ plist -v 7.0 -a APP_NAME -path
/Users/you/Library/Application Support/iPhone Simulator/7.0/Applications/ABCDEFGH-IJKL-MNOP-QRST-UVWXYZ123456
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
