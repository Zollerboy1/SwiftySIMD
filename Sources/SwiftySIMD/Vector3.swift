//
//  Vector3.swift
//  SwiftySIMD
//
//  Created by Josef Zoller on 28.06.22.
//

import simd

public typealias Vector3 = SIMD3<Float>

extension Vector3: Vector {
    /// Returns a new vector from the specified two-element vector, and other elements set to zero.
    @inlinable
    public init(_ other: Vector2) {
        self = simd_make_float3(other)
    }
    
    /// Returns a new vector by truncating the specified four-element vector.
    @inlinable
    public init(_ other: Vector4) {
        self = simd_make_float3(other)
    }
    
    /// Returns a new vector by truncating the specified eight-element vector.
    @inlinable
    public init(_ other: Vector8) {
        self = simd_make_float3(other)
    }
    
    /// Returns a new vector by truncating the specified sixteen-element vector.
    @inlinable
    public init(_ other: SIMD16<Float>) {
        self = simd_make_float3(other)
    }
    
    /// A three-element vector created by appending a two-element vector to a scalar.
    @inlinable
    public init(_ x: Float, _ yz: Vector2) {
        self = simd_make_float3(x, yz)
    }
    
    
    /// Returns a vector pointing in the same direction of the supplied vector with a length of 1.
    @inlinable
    public var normalized: Vector3 {
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
    public func dotProduct(with other: Vector3) -> Float {
        simd_dot(self, other)
    }
    
    
    /// Returns the cross product of two vectors.
    @inlinable
    public func crossProduct(with other: Vector3) -> Vector3 {
        simd_cross(self, other)
    }
}
