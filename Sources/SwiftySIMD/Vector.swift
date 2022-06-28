//
//  Vector.swift
//  SwiftySIMD
//
//  Created by Josef Zoller on 28.06.22.
//

@_exported import simd

public protocol Vector: SIMD where Scalar == Float {
    /// Returns a vector pointing in the same direction of the vector with a length of 1.
    var normalized: Self { get }
    
    /// Returns the length of the vector.
    var length: Float { get }
    
    /// Returns the square of the length of the vector.
    var lengthSquared: Float { get }
    
    /// Returns the dot product of this vector with the supplied vector.
    func dotProduct(with other: Self) -> Float
}
