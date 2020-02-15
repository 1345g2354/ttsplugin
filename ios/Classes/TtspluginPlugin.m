#import "TtspluginPlugin.h"
#if __has_include(<ttsplugin/ttsplugin-Swift.h>)
#import <ttsplugin/ttsplugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ttsplugin-Swift.h"
#endif

@implementation TtspluginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTtspluginPlugin registerWithRegistrar:registrar];
}
@end
