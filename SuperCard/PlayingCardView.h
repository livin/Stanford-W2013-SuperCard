//
//  PlayingCardView.h
//  SuperCard
//
//  Created by Vladimir on 19.05.13.
//  Copyright (c) 2013 Vladimir Livin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) int rank;
@property (nonatomic, strong) NSString* suit;
- (NSString*) rankString;

@end
