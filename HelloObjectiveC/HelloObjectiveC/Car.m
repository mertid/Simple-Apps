//
//  Car.m
//  HelloObjectiveC
//
//  Created by SYBIL TRUTH on 7/9/14.
//  Copyright (c) 2014 Merritt Tidwell. All rights reserved.
//

- (id)initWithModel:(NSString *)aModel {
    self = [super init];
    if (self) {
        // Any custom setup work goes here
        _model = [aModel copy];
        _odometer = 0;
    }
    return self;
}

- (id)init {
    // Forward to the "designated" initialization method
    return [self initWithModel:_defaultModel];
}