//
//  Vector2.swift
//  SwiftySIMD
//
//  Created by Josef Zoller on 28.06.22.
//

import simd

public typealias Vector2 = SIMD2<Float>

extension Vector2: Vector {
    /// Returns a new vector by truncating the specified three-element vector.
    public init(_ other: Vector3) {
        self = simd_make_float2(other)
    }
    
    /// Returns a new vector by truncating the specified four-element vector.
    public init(_ other: Vector4) {
        self = simd_make_float2(other)
    }
    
    /// Returns a new vector by truncating the specified eight-element vector.
    public init(_ other: Vector8) {
        self = simd_make_float2(other)
    }
    
    /// Returns a new vector by truncating the specified sixteen-element vector.
    public init(_ other: SIMD16<Float>) {
        self = simd_make_float2(other)
    }
    
    
    /// Returns a vector pointing in the same direction of the supplied vector with a length of 1.
    public var normalized: SIMD2<Float> {
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
    public func dotProduct(with other: Vector2) -> Float {
        simd_dot(self, other)
    }
    
    
    /// Interprets two two-dimensional vectors as three-dimensional vectors in the xy-plane and computes their cross product, which lies along the z-axis.
    public func crossProduct(with other: Vector2) -> Vector3 {
        simd_cross(self, other)
    }
}
