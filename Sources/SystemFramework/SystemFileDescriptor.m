/*===----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------===*
 *
 *  SystemFileDescriptor.m
 *  system-framework
 *
 *  Created by Fang Ling on 2026/11/1.
 *
 *  This source file is part of the SystemFramework open source project
 *
 *  Copyright (c) 2026 Fang Ling <fangling@fangl.ing>
 *  Licensed under Apache License v2.0
 *
 *  See LICENSE for license information
 *
 *  SPDX-License-Identifier: Apache-2.0
 *
 *===----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------===*/

#import "SystemFramework/SystemFileDescriptor.h"

C_ASSUME_NONNULL_BEGIN

@interface SystemFileDescriptor ()

@property (nonatomic, assign, readwrite) CInteger rawValue;

@end

@implementation SystemFileDescriptor

- (instancetype)initWithRawValue:(CInteger)rawValue {
  if (!(self = [super init])) {
    return nil;
  }

  self.rawValue = rawValue;

  return self;
}

@end

C_ASSUME_NONNULL_END
