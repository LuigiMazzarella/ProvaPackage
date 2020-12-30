//
//  StackView.swift
//  StackView
//
//  Created by Luigi Mazzarella on 04/12/20.
//

import UIKit

extension UIView {

	//MARK: - this funcition returns a stackView
	fileprivate func stack(_ axis: NSLayoutConstraint.Axis = .vertical, views: [UIView], spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill) -> UIStackView
	{
		
		let stackView = UIStackView(arrangedSubviews: views)
		stackView.axis = axis
		stackView.spacing = spacing
		stackView.alignment = alignment
		stackView.distribution = distribution
		
		addSubview(stackView)
		stackView.edgeTo(self)

		return stackView
	}
	
	//MARK: - this funcition returns a StackView with axis vertical
	@discardableResult
	open func vStack(_ views: UIView..., spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill ) -> UIStackView
	{
		return stack(.vertical, views: views, spacing: spacing, alignment: alignment, distribution: distribution)
	}
	//MARK: - this funcition returns a StackView with axis horizontal
	@discardableResult
	open func hStack(_ views: UIView..., spacing: CGFloat = 0, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fill ) -> UIStackView
	{
		return stack(.horizontal, views: views, spacing: spacing, alignment: alignment, distribution: distribution)
	}

}
