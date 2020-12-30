//
//  UIView+Extension.swift
//  StackView
//
//  Created by Luigi Mazzarella on 04/12/20.
//

import UIKit

public enum ViewSafeArea {
	case top, leading, trailing, bottom, vertical, horizontal, all, none
}


extension UIView {
	
	//MARK:- function manages constraints without top or bot anchor
	@discardableResult
	public func edgeToWithoutTop(_ view: UIView,constantLeading: CGFloat = 0,constantTrailing: CGFloat = 0, constantBot: CGFloat = 0 ,safeArea: ViewSafeArea = .none) -> UIView {
		translatesAutoresizingMaskIntoConstraints = false
		
		switch safeArea {
			case .top:
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: constantTrailing).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: constantBot).isActive = true
			case .leading:
				leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: constantTrailing).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: constantBot).isActive = true
			case .trailing:
				
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: constantTrailing).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: constantBot).isActive = true
			case .bottom:
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: constantTrailing).isActive = true
				bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: constantBot).isActive = true
			case .vertical:
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: constantTrailing).isActive = true
				bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: constantBot).isActive = true
			case .horizontal:
				leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: constantTrailing).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: constantBot).isActive = true
			case .all:
				leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: constantTrailing).isActive = true
				bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: constantBot).isActive = true
			case .none:
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: constantTrailing).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: constantBot).isActive = true
		}
		return self
	}
	
	@discardableResult
	public func edgeToWithoutBot(_ view: UIView,constantLeading: CGFloat = 0,constantTrailing: CGFloat = 0, constantTop: CGFloat = 0 , safeArea: ViewSafeArea = .none) -> UIView {
		translatesAutoresizingMaskIntoConstraints = false
		
		switch safeArea {
			case .top:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: constantTop).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: constantTrailing).isActive = true
			case .leading:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: constantTop).isActive = true
				leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: constantTrailing).isActive = true
			case .trailing:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: constantTop).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: constantTrailing).isActive = true
			case .vertical:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: constantTop).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: constantTrailing).isActive = true
			case .horizontal:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: constantTop).isActive = true
				leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: constantTrailing).isActive = true
			case .all:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: constantTop).isActive = true
				leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: constantTrailing).isActive = true
			case .bottom:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: constantTop).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: constantTrailing).isActive = true
			case .none:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: constantTop).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constantLeading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: constantTrailing).isActive = true
		}
		return self
	}
	
	//MARK: - This function is able to set a view with constranints constant
	@discardableResult
	public func constantConstraints(_ view: UIView, top: CGFloat = 0, bot: CGFloat = 0,leading: CGFloat = 0, trailing:CGFloat = 0,safeArea: ViewSafeArea = .none) -> UIView{
		
		translatesAutoresizingMaskIntoConstraints = false
		
		switch safeArea {
			case .top:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: top).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: trailing).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bot).isActive = true
			case .leading:
				topAnchor.constraint(equalTo: view.topAnchor, constant: top).isActive = true
				leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: leading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: trailing).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bot).isActive = true
			case .trailing:
				topAnchor.constraint(equalTo: view.topAnchor, constant: top).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leading).isActive = true
				trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: trailing).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bot).isActive = true
			case .bottom:
				topAnchor.constraint(equalTo: view.topAnchor, constant: top).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: trailing).isActive = true
				bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: bot).isActive = true
			case .vertical:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: top).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: trailing).isActive = true
				bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: bot).isActive = true
			case .horizontal:
				topAnchor.constraint(equalTo: view.topAnchor, constant: top).isActive = true
				leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: leading).isActive = true
				trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: trailing).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bot).isActive = true
			case .all:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: top).isActive = true
				leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: leading).isActive = true
				trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: trailing).isActive = true
				bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: bot).isActive = true
			case .none:
				topAnchor.constraint(equalTo: view.topAnchor, constant: top).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leading).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: trailing).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bot).isActive = true
		}
		
		
		
		return self
		
	}
	
	//MARK: - This function is able to set a view with a multiplier to Width and Height
	@discardableResult
	public func multiplierConstraintsDimension(_ view: UIView, multiplierWidth:CGFloat = 1, multiplierHeight: CGFloat = 1) -> UIView{
		
		translatesAutoresizingMaskIntoConstraints = false
		widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: multiplierWidth).isActive = true
		heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: multiplierHeight).isActive = true
		return self
		
	}
	
	//MARK: - This function is able to set a view with a multiplier to Width
	@discardableResult
	public func multiplierConstraintsWidth(_ view: UIView, multiplier:CGFloat = 1) -> UIView{
		
		translatesAutoresizingMaskIntoConstraints = false
		widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: multiplier).isActive = true
		
		return self
		
	}
	//MARK: - This function is able to set a view with a multiplier to Height
	@discardableResult
	public func multiplierConstraintsHeight(_ view: UIView, multiplier:CGFloat = 1) -> UIView{
		
		translatesAutoresizingMaskIntoConstraints = false
		heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: multiplier).isActive = true
		
		return self
		
	}
	
	//MARK: - This function is able to set a view to the center of superview
	@discardableResult
	public func centerConstraint(_ view: UIView) -> UIView{
		
		translatesAutoresizingMaskIntoConstraints = false
		
		centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		
		return self
		
	}
	
	//MARK: - this funcition is able to set a subview constraint egual view using safeArea
	@discardableResult
	public func edgeTo(_ view: UIView, safeArea: ViewSafeArea = .none) -> UIView {
		translatesAutoresizingMaskIntoConstraints = false
		
		switch safeArea {
			case .top:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
			case .leading:
				topAnchor.constraint(equalTo: view.topAnchor).isActive = true
				leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
			case .trailing:
				topAnchor.constraint(equalTo: view.topAnchor).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
				trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
			case .bottom:
				topAnchor.constraint(equalTo: view.topAnchor).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
				bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
			case .vertical:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
				bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
			case .horizontal:
				topAnchor.constraint(equalTo: view.topAnchor).isActive = true
				leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
				trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
			case .all:
				topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
				leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
				trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
				bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
			case .none:
				topAnchor.constraint(equalTo: view.topAnchor).isActive = true
				leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
				trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
				bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
		}
		return self
	}
	
	
	
	
	//MARK: - this funcition is able to set a height and width
	@discardableResult
	open func setFrame(_ size: CGSize) -> UIView {
		translatesAutoresizingMaskIntoConstraints = false
		widthAnchor.constraint(equalToConstant: size.width).isActive = true
		heightAnchor.constraint(equalToConstant: size.height).isActive = true
		return self
	}
	//MARK: - this funcition is able to set height
	@discardableResult
	open func setHeight(_ height: CGFloat) -> UIView {
		translatesAutoresizingMaskIntoConstraints = false
		heightAnchor.constraint(equalToConstant: height).isActive = true
		return self
	}
	
	//MARK: - this funcition is able to set width
	@discardableResult
	open func setWidth(_ width: CGFloat) -> UIView {
		translatesAutoresizingMaskIntoConstraints = false
		widthAnchor.constraint(equalToConstant: width).isActive = true
		return self
	}
}

