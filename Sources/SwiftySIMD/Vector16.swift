//
//  Vector16.swift
//  SwiftySIMD
//
//  Created by Josef Zoller on 28.06.22.
//

import simd

public typealias Vector16 = SIMD16<Float>

extension Vector16: Vector {
    /// Returns a new vector from the specified two-element vector, and other elements set to zero.
    public init(_ other: Vector2) {
        self = simd_make_float16(other)
    }
    
    /// Returns a new vector from the specified three-element vector, and other elements set to zero.
    public init(_ other: Vector3) {
        self = simd_make_float16(other)
    }
    
    /// Returns a new vector from the specified four-element vector, and other elements set to zero.
    public init(_ other: Vector4) {
        self = simd_make_float16(other)
    }
    
    /// Returns a new vector from the specified eight-element vector, and other elements set to zero.
    public init(_ other: Vector8) {
        self = simd_make_float16(other)
    }
    
    /// Returns a new vector from the specified vectors.
    public init(_ lo: Vector8, _ hi: Vector8) {
        self = simd_make_float16(lo, hi)
    }
    
    
    /// Returns a vector pointing in the same direction of the supplied vector with a length of 1.
    public var normalized: Vector16 {
        simd_normalize(self)
    }
    
    /// Returns the length of the vector.
    public var length: Float {
        simd_length(self)
    }
    
    /// Returns the length of the vector.
    public var lengthSquared: Float {
        simd_length_squared(self)
    }
    
    /// Returns the dot product of this vector with the supplied vector.
    public func dotProduct(with other: Vector16) -> Float {
        simd_dot(self, other)
    }
}
