//
//  File.swift
//  DSA-Swift
//
//  Created by Sanjay Mali on 08/08/25.
//
import Foundation

/// Defines what the `twoSum` function should return.
public enum TwoSumReturnType {
	case values   // Return the two numbers
	case indices  // Return the indices of the two numbers
}

/// Finds the first pair of elements in `nums` that sum up to the `target`.
///
/// - Parameters:
///   - nums: The input array of integers.
///   - target: The target sum.
///   - returning: Choose whether to return the two values or their indices.
/// - Returns: An array of two integers, either the matching values or their indices.
///
/// Time Complexity: O(n)
/// Space Complexity: O(n)
///
/// Examples:
/// ```
/// twoSum([2, 7, 11, 5], 9, returning: .values)   // [2, 7]
/// twoSum([2, 7, 11, 5], 9, returning: .indices)  // [0, 1]
/// ```
public func twoSum(_ nums: [Int], _ target: Int, returning: TwoSumReturnType) -> [Int] {
	switch returning {
	case .values:
		var seen = Set<Int>()
		for num in nums {
			let complement = target - num
			if seen.contains(complement) {
				return [complement, num]
			}
			seen.insert(num)
		}
		
	case .indices:
		var dict = [Int: Int]()  // [num: index]
		for (index, num) in nums.enumerated() {
			let complement = target - num
			if let compIndex = dict[complement] {
				return [compIndex, index]
			}
			dict[num] = index
		}
	}
	return []
}

