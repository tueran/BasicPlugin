#import "BasicPlugin.h"
#import <Cordova/CDV.h>

@implementation BasicPlugin

- (void)sayHello:(CDVInvokedUrlCommand*)command
{
    [self.commandDelegate runInBackground:^{
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"SITEFORUM - that's your plugin!"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
    
}

@end