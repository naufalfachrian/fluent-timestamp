//
//  HasTimestamp.swift
//  
//  Copyright (c) 2023 Naufal Fachrian
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation


/// Used to define a set of properties for objects that require timestamp functionality.
public protocol HasTimestamp {
    
    /// Represents the date and time when the object was created.
    var createdAt: Date? { get set }
    
    /// Represents the date and time when the object was last updated.
    var updatedAt: Date? { get set }
    
}


/// Used to define a set of properties for objects that require soft delete functionality.
public protocol SoftDelete {
    
    /// Represents the date and time when the object was deleted.
    var deletedAt: Date? { get set }
    
}


extension HasTimestamp {
    
    public mutating func markCreated(at date: Date? = nil) {
        self.createdAt = date ?? Date()
    }
    
    public mutating func markUpdated(at date: Date? = nil) {
        self.updatedAt = date ?? Date()
    }
    
}


extension SoftDelete {
    
    public mutating func markDeleted(at date: Date? = nil) {
        self.deletedAt = date ?? Date()
    }
    
}
