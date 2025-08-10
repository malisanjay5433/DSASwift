//
//  ArrayTests.swift
//  DSA-Swift
//
//  Created by Sanjay Mali on 08/08/25.
//

import XCTest
@testable import Array
import DSA_Swift
final class ArrayTests: XCTestCase {
	
	override func setUp() {
		super.setUp()
	}
	override func tearDown()   {
		super.tearDown()
	}
	
	func test_TwoSumReturnValues() {
		let arr = [2, 7, 11, 5]
		let target = 9
		let result = twoSum(arr, target, returning: .values)
		XCTAssertEqual(result, [2, 7])
	}
	
	func test_TwoSumReturnIndices() {
		let arr = [2, 11, 7, 5]
		let target = 9
		let result = twoSum(arr, target, returning: .indices)
		XCTAssertEqual(result, [0, 2])
	}
	
	func test_ContainDuplicate(){
		let arr = [1,2,3,4,5,1]
		let result = containsDuplicate(arr)
		XCTAssertTrue(result)
	}
	
	func test_MaxProfit(){
		let arr = [10,7,5,8,11,9]
		let result = maxProfit(arr)
		XCTAssertEqual(result, 6)
	}
	
	//Anagram
	func test_isAnagram(){
		let str1 = "listen"
		let str2 = "silent"
		let result = isAnagram(s: str1, t: str2)
		XCTAssertTrue(result)
	}
	
	//Palidrome
	func test_isPalindrome(){
		let input = "racecar"
		let result = isValidPalindrome(input)
		XCTAssertTrue(result)
		
		let str = "A man, a plan, a canal: Panama"
		let res = isValidPalindrome(str)
		XCTAssertTrue(res)
	}
}
