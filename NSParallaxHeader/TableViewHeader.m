//
//  TableViewHeader.m
//  NSParallaxHeader
//
//  Created by Naqi Syed on 4/22/16.
//  Copyright © 2016 Naqi Syed. All rights reserved.
//

#import "TableViewHeader.h"

@implementation TableViewHeader

+(instancetype) instantiateViewWithSize:(CGSize) size{
    
    TableViewHeader *view = [[NSBundle mainBundle] loadNibNamed:@"TableViewHeader" owner:self options:nil].firstObject;
    return view;
}

@end
