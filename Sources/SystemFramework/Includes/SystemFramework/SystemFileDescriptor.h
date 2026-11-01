/*===----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------===*
 *
 *  SystemFileDescriptor.h
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

#ifndef SYSTEM_FILE_DESCRIPTOR_H
#define SYSTEM_FILE_DESCRIPTOR_H

#import <CFramework/CFramework.h>
#import <ObjectiveCFramework/ObjectiveCFramework.h>

C_ASSUME_NONNULL_BEGIN

/**
 * An abstract handle to an input or output data resource, such as a file or a socket.
 *
 * You are responsible for managing the lifetime and validity of ``SystemFileDescriptor`` values, in the same way as you manage a raw C file handle.
 *
 * ## Topics
 *
 * ### Creating a File Descriptor
 *
 * - ``initWithRawValue:``
 * - ``rawValue``
 */
@interface SystemFileDescriptor: ObjectiveCObject

/**
 * The raw C file handle.
 */
@property (nonatomic, assign, readonly) CInteger rawValue;

/**
 * Creates a strongly-typed file handle from a raw C file handle.
 *
 * - Parameter rawValue: The raw C file handle.
 */
- (instancetype)initWithRawValue:(CInteger)rawValue;

@end

C_ASSUME_NONNULL_END

#endif
