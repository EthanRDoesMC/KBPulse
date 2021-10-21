//
//  main.m
//  KBPulse
//
//  Created by Ethan Chaffin on 10/20/21.
//

#import <Foundation/Foundation.h>
#import "KBPPulseManager.h"
#import "KBPAnimator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("KBPulse by EthanRDoesMC\n");
        [KBPPulseManager configure];
        printf("Animating keyboard. Press ctrl-c or close terminal to stop.\n");
        [NSTimer scheduledTimerWithTimeInterval:3 repeats:true block:^(NSTimer * _Nonnull timer) {
            BOOL slowFade = true;
            if (slowFade && ![KBPPulseManager.sharedInstance paused] && KBPAnimator.isBright) {
                [KBPAnimator setBrightness:0 withDuration:2500];
            }
            else if (slowFade && ![KBPPulseManager.sharedInstance paused] && !KBPAnimator.isBright) {
                [[KBPPulseManager sharedInstance] setPaused:true];
            }
            else if (slowFade && [KBPPulseManager.sharedInstance paused] && !KBPAnimator.isBright) {
                [[KBPPulseManager sharedInstance] setPaused:false];
                [KBPAnimator setBrightness:1 withDuration:2500];
            }
            else {
                [KBPAnimator setBrightness:KBPAnimator.isBright ? 0 : 1 withDuration:KBPAnimator.isBright ? 2500 : 1000];
            }
        }];
    }
    [[NSRunLoop currentRunLoop] run];
    return 0;
}
