//
//  ContainDuplicate.swift
//  DSA-Swift
//
//  Created by Sanjay Mali on 08/08/25.
//


/// Checks if the given array contains any duplicate elements.
///
/// - Parameter nums: An array of integers.
/// - Returns: `true` if any element appears more than once; otherwise, `false`.
///
/// - Time Complexity: O(n)
///   - We iterate through the array once, where `n` is the number of elements.
/// - Space Complexity: O(n)
///   - In the worst case, we store all `n` elements in a Set.
///
/// Example:
/// ```
/// containsDuplicate([1, 2, 3, 1]) // ➞ true
/// containsDuplicate([1, 2, 3])   // ➞ false
/// ```
public func containsDuplicate(_ nums: [Int]) -> Bool {
	var seen = Set<Int>()
	
	for num in nums {
		if seen.contains(num) {
			return true
		}
		seen.insert(num)
	}
	
	return false
}
