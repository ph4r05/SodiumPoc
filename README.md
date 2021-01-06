# SodiumPoc

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

SodiumPoc is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SodiumPoc'
```

## Example project

```bash
cd Example
pod install
```

The project builds with `use_frameworks!` in `Example/Podfile`, does not build without it due to many linking errors. Example:

```
Undefined symbols for architecture arm64:
"_sodium_unpad", referenced from:
    Sodium.Utils.unpad(bytes: inout [Swift.UInt8], blockSize: Swift.Int) -> ()? in libSodium.a(Utils.o)
    Sodium.Utils.unpad(bytes: inout [Swift.UInt8], blockSize: Swift.Int) -> ()? in libsodium.a(Utils.o)
"_sodium_base64_encoded_len", referenced from:
    Sodium.Utils.bin2base64(_: [Swift.UInt8], variant: Sodium.Utils.Base64Variant) -> Swift.String? in libSodium.a(Utils.o)
    Sodium.Utils.bin2base64(_: [Swift.UInt8], variant: Sodium.Utils.Base64Variant) -> Swift.String? in 
```

## Lint test

The following Lint passes:
```bash
pod spec lint --no-clean --verbose --use-modular-headers --private  
```

This does not:
```bash
pod spec lint --no-clean --verbose --use-modular-headers --private --use-libraries 
```

## Author

ph4r05, dusan.klinec@gmail.com

## License

SodiumPoc is available under the MIT license. See the LICENSE file for more info.
