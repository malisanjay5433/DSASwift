//
//  Palindrome.swift
//  DSA-Swift
//
//  Created by Sanjay Mali on 10/08/25.
//

public func isValidPalindrome(_ s: String) -> Bool{
	guard !s.isEmpty else {
		return true
	}
	let filter = s.lowercased().filter { $0.isLetter || $0.isNumber }
	return filter.lowercased() == String(filter.lowercased().reversed())
}
