//
//  Anagram.swift
//  DSA-Swift
//
//  Created by Sanjay Mali on 10/08/25.
//
/// isAnagram(_:_:)
///
/// Given two strings `s` and `t`, this function checks whether they are anagrams of each other.
/// Anagrams contain the exact same characters with the same frequency, ignoring case.
///
/// The function first verifies that the strings have the same length.
/// Then, it converts both strings to lowercase and sorts their characters,
/// comparing the sorted results to determine if they match.
///
/// - Parameters:
///   - s: String - The first input string
///   - t: String - The second input string
/// - Returns: Bool - `true` if `s` and `t` are anagrams, otherwise `false`
///
/// Time Complexity: O(n log n) due to sorting the characters
/// Space Complexity: O(n) for storing sorted character arrays
public func isAnagram(s: String, t: String) -> Bool {
	if s.count != t.count {
		return false
	}
	
	let sortedS = s.lowercased().sorted()
	let sortedT = t.lowercased().sorted()
	return sortedS == sortedT
}

