#import <Cordova/CDV.h>
#import "AppIsDebug.h"

@implementation AppIsDebug

- (CDVPluginResult *)get:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSDictionary* deviceProperties = [self deviceProperties];

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK  messageAsDictionary:deviceProperties];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (NSDictionary*)deviceProperties
{
    NSMutableDictionary* devProps = [NSMutableDictionary dictionaryWithCapacity:1];
    #ifdef DEBUG
        [devProps setObject:@"true" forKey:@"debug"];
    #else
        [devProps setObject:@"false" forKey:@"debug"];
    #endif

    NSDictionary* devReturn = [NSDictionary dictionaryWithDictionary:devProps];
    return devReturn;
}

@end