//
//  Vector4.swift
//  SwiftySIMD
//
//  Created by Josef Zoller on 28.06.22.
//

import simd

public typealias Vector4 = SIMD4<Float>

extension Vector4: Vector {
    /// Returns a new vector from the specified two-element vector, and other elements set to zero.
    public init(_ other: Vector2) {
        self = simd_make_float4(other)
    }
    
    /// Returns a new vector from the specified three-element vector, and other elements set to zero.
    public init(_ other: Vector3) {
        self = simd_make_float4(other)
    }
    
    /// Returns a new vector by truncating the specified eight-element vector.
    public init(_ other: Vector8) {
        self = simd_make_float4(other)
    }
    
    /// Returns a new vector by truncating the specified sixteen-element vector.
    public init(_ other: SIMD16<Float>) {
        self = simd_make_float4(other)
    }
    
    /// Returns a new vector from the specified vectors.
    public init(_ xy: Vector2, _ zw: Vector2) {
        self = simd_make_float4(xy, zw)
    }
    
    /// Returns a new vector from a scalar value, a vector, and a scalar value.
    public init(_ x: Float, _ yz: Vector2, _ w: Float) {
        self = simd_make_float4(x, yz, w)
    }
    
    /// Returns a new vector from two scalar values and a vector.
    public init(_ x: Float, _ y: Float, _ zw: Vector2) {
        self = simd_make_float4(x, y, zw)
    }
    
    /// Returns a new vector from a scalar value and a vector.
    public init(_ x: Float, _ yzw: Vector3) {
        self = simd_make_float4(x, yzw)
    }
    
    /// Returns a new vector from a vector and two scalar values.
    public init(_ xy: Vector2, _ z: Float, _ w: Float) {
        self = simd_make_float4(xy, z, w)
    }
    
    /// Returns a new vector from a vector and a scalar value.
    public init(_ xyz: Vector3, _ w: Float) {
        self = simd_make_float4(xyz, w)
    }
    
    
    /// Returns a vector pointing in the same direction of the supplied vector with a length of 1.
    public var normalized: Vector4 {
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
    public func dotProduct(with other: Vector4) -> Float {
        simd_dot(self, other)
    }
}
