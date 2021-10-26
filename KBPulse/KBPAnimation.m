//
//  KBPAnimation.m
//  KBPulse
//
//  Created by EthanRDoesMC on 10/25/21.
//

#import "KBPAnimation.h"

@implementation KBPAnimation

-(NSNumber *)totalDuration {
    return @(_fadeDuration.intValue + _delay.intValue);
}

-(NSDictionary *)animationDictionary {
    return @{ @"Name":_name, @"Description":_comment, @"Brightness":_brightness, @"Fade Duration":_fadeDuration, @"Delay":_delay };
}

-(id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _name = dictionary[@"Name"] ?: @"";
        _comment = dictionary[@"Description"] ?: @"";
        _brightness = dictionary[@"Brightness"] ?: [NSNumber numberWithDouble:0.0];
        _fadeDuration = dictionary[@"Fade Duration"] ?: [NSNumber numberWithInteger:0];
        _delay = dictionary[@"Delay"] ?: [NSNumber numberWithInteger:0];
    }
    return self;
}

@end
