//
//  PlayingCardView.m
//  SuperCard
//
//  Created by Vladimir on 19.05.13.
//  Copyright (c) 2013 Vladimir Livin. All rights reserved.
//

#import "PlayingCardView.h"

@implementation PlayingCardView

+ (NSArray*)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

- (NSString*) rankString
{
    return [[self class] rankStrings][self.rank];
}

- (void) setup {
    self.rank = 13;
    self.suit = @"♥";
}

- (void) awakeFromNib
{
    [self setup];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self setup];
    return self;
}

- (void)drawRect:(CGRect)rect
{
    UIBezierPath* roundedRect = [UIBezierPath bezierPathWithRoundedRect: self.bounds cornerRadius: 9.0];
    [[UIColor whiteColor] setFill];
    [roundedRect fill];
    
    NSString* cardString = [NSString stringWithFormat:@"%@\n%@", self.rankString, self.suit];
    
    NSMutableParagraphStyle* paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setAlignment: NSTextAlignmentCenter];
    
    NSDictionary* aa = @{NSFontAttributeName: [UIFont systemFontOfSize: self.bounds.size.width * 0.2], NSParagraphStyleAttributeName: paragraphStyle};
    
    NSMutableAttributedString* rankAndSuit = [[NSMutableAttributedString alloc] initWithString: cardString attributes: aa];
    CGFloat inset = 5.0;
    [rankAndSuit drawInRect: CGRectMake(inset, inset, rankAndSuit.size.width + inset, rankAndSuit.size.height + inset)];
}

@end
