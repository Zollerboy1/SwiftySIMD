//
//  Vector8.swift
//  SwiftySIMD
//
//  Created by Josef Zoller on 28.06.22.
//

import simd

public typealias Vector8 = SIMD8<Float>

extension Vector8: Vector {
    /// Returns a new vector from the specified two-element vector, and other elements set to zero.
    @inlinable
    public init(_ other: Vector2) {
        self = simd_make_float8(other)
    }
    
    /// Returns a new vector from the specified three-element vector, and other elements set to zero.
    @inlinable
    public init(_ other: Vector3) {
        self = simd_make_float8(other)
    }
    
    /// Returns a new vector from the specified four-element vector, and other elements set to zero.
    @inlinable
    public init(_ other: Vector4) {
        self = simd_make_float8(other)
    }
    
    /// Returns a new vector by truncating the specified sixteen-element vector.
    @inlinable
    public init(_ other: Vector16) {
        self = simd_make_float8(other)
    }
    
    /// Returns a new vector from the specified vectors.
    @inlinable
    public init(_ lo: Vector4, _ hi: Vector4) {
        self = simd_make_float8(lo, hi)
    }
    
    
    /// Returns a vector pointing in the same direction of the supplied vector with a length of 1.
    @inlinable
    public var normalized: Vector8 {
        simd_normalize(self)
    }
    
    /// Returns the length of the vector.
    @inlinable
    public var length: Float {
        simd_length(self)
    }
    
    /// Returns the length of the vector.
    @inlinable
    public var lengthSquared: Float {
        simd_length_squared(self)
    }
    
    /// Returns the dot product of this vector with the supplied vector.
    @inlinable
    public func dotProduct(with other: Vector8) -> Float {
        simd_dot(self, other)
    }
}
