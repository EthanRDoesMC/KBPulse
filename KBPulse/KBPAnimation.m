//
//  KBPAnimation.m
//  KBPulse
//
//  Created by EthanRDoesMC on 10/25/21.
//

#import "KBPAnimation.h"

@implementation KBPAnimation

-(NSNumber *)totalDuration {
    return [NSNumber numberWithInt:(_fadeDuration.intValue + _delay.intValue)];
}

-(NSDictionary *)animationDictionary {
    return @{ @"Name":_name, @"Description":_comment, @"Brightness":_brightness, @"Fade Duration":_fadeDuration, @"Delay":_delay };
}

-(id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _name = dictionary[@"Name"] ? dictionary[@"Name"] : @"";
        _comment = dictionary[@"Description"] ? dictionary[@"Description"] : @"";
        _brightness = dictionary[@"Brightness"] ? dictionary[@"Brightness"] : 0.0;
        _fadeDuration = dictionary[@"Fade Duration"] ? dictionary[@"Fade Duration"] : 0;
        _delay = dictionary[@"Delay"] ? dictionary[@"Delay"] : 0;
    }
    return self;
}

@end
