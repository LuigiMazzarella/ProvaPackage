//
//  DateFormatter+Estensions.swift
//  RickAndMortyApp
//
//  Created by Macbook on 17/12/20.
//

import Foundation

extension DateFormatter {
	
	static let entireMonth = { () -> DateFormatter in
		let formatter = DateFormatter()
		formatter.dateFormat = "MMMM d, yyyy"
		return formatter
	}()
	
}
