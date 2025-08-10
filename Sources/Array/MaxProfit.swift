//
//  MaxProfit.swift
//  DSA-Swift
//
//  Created by Sanjay Mali on 08/08/25.
//
import Foundation
/// maxProfit(_:)
///
/// Given an array of prices representing the price of a stock on each day,
/// this function finds the maximum profit achievable by buying on one day
/// and selling on a later day.
///
/// The function uses a single pass approach by tracking the minimum price seen so far
/// and calculating profit at each step.
///
/// - Parameter prices: [Int] - The stock prices by day
/// - Returns: Int - The maximum profit, or 0 if no profit is possible
///
/// Time Complexity: O(n)
/// Space Complexity: O(1)
///
func maxProfit(_ prices: [Int]) -> Int {
	var minPrice = Int.max  // Start with highest possible value
	var maxProfit = 0       // Start with zero profit

	for price in prices {
		if price < minPrice {
			minPrice = price  // Update min price if current is lower
		} else {
			let profit = price - minPrice  // Potential profit
			maxProfit = max(maxProfit, profit)  // Update max profit if better
		}
	}

	return maxProfit
}
