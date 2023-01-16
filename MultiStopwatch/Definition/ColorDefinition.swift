	//
	//  ColorDefinition.swift
	//  MultiStopwatch
	//
	//  Created by Lim on 2023/01/16.
	//

import Foundation
import SwiftUI



	/// View의 Element단위로 색상을 정의한 enum
	/// 배경, 글씨색, 버튼과 같은 View단위의 색상 정의이다.
enum ElementColor
{
	case backgroundColor
	case foregroundColor
	case tabColor
	case pastelPink
	case pastelBlue
	case pastelGreen
	case pastelBrown
	case pastelPurple
	
		// ColorScheme에 따른 element색상을 Color객체로 반환
	func getColor(colorScheme: ColorScheme) -> Color
	{
		if(colorScheme == .light)
		{
			switch self
			{
				case .backgroundColor: return ThemeColor.themeWhite.getColor()
				case .foregroundColor: return ThemeColor.themeBlack.getColor()
				case .tabColor: return ThemeColor.lightTabColor.getColor()
				case .pastelPink: return ThemeColor.lightPastelPink.getColor()
				case .pastelBlue: return ThemeColor.lightPastelBlue.getColor()
				case .pastelGreen: return ThemeColor.lightPastelGreen.getColor()
				case .pastelBrown: return ThemeColor.lightPastelBrown.getColor()
				case .pastelPurple: return ThemeColor.lightPastelPurple.getColor()
			}
		}
		else
		{
			switch self
			{
				case .backgroundColor: return ThemeColor.themeBlack.getColor()
				case .foregroundColor: return ThemeColor.themeWhite.getColor()
				case .tabColor: return ThemeColor.darkTabColor.getColor()
				case .pastelPink: return ThemeColor.darkPastelPink.getColor()
				case .pastelBlue: return ThemeColor.darkPastelBlue.getColor()
				case .pastelGreen: return ThemeColor.darkPastelGreen.getColor()
				case .pastelBrown: return ThemeColor.darkPastelBrown.getColor()
				case .pastelPurple: return ThemeColor.darkPastelPurple.getColor()
			}
		}
	}
}

	/// 해당 앱에서 사용하는 모든 색상을 정의한 enum
	/// 사용하지 않는 색상도 정의될 수 있으며 활용 가능성이 있는 모든 색상을 정의한다.
	/// getColor메소드를 통해서 해당 색상을 반환하여 사용한다.
enum ThemeColor
{
		// Background & Foreground Colors
	case themeWhite
	case themeBlack
	
		// TabView Background Colors
	case lightTabColor
	case darkTabColor
	
		// LightMode Pastel Colors
	case lightPastelPink
	case lightPastelBlue
	case lightPastelGreen
	case lightPastelBrown
	case lightPastelPurple
	
		// DarkMode Pastel Colors
	case darkPastelPink
	case darkPastelBlue
	case darkPastelGreen
	case darkPastelBrown
	case darkPastelPurple
	
	func getColor() -> Color
	{
		switch self
		{
			case .themeWhite : return Color(#colorLiteral(red: 0.9647, green: 0.9294, blue: 0.8627, alpha: 1))
			case .themeBlack : return Color(#colorLiteral(red: 0.2083, green: 0.2083, blue: 0.2083, alpha: 1))
				
			case .lightTabColor: return Color(#colorLiteral(red: 0.9166, green: 0.82808, blue: 0.6607, alpha: 1))
			case .darkTabColor: return Color(#colorLiteral(red: 0.1500, green: 0.1500, blue: 0.1500, alpha: 0.54))
				
			case .lightPastelPink: return Color(#colorLiteral(red: 0.9708, green: 0.7038, blue: 0.7322, alpha: 0.6))
			case .lightPastelBlue: return Color(#colorLiteral(red: 0.6262, green: 0.7521, blue: 0.8999, alpha: 0.6))
			case .lightPastelGreen: return Color(#colorLiteral(red: 0.5946, green: 0.8374, blue: 0.5896, alpha: 0.6))
			case .lightPastelBrown: return Color(#colorLiteral(red: 0.8083, green: 0.6586, blue: 0.1273, alpha: 0.3))
			case .lightPastelPurple: return Color(#colorLiteral(red: 0.8264, green: 0.5379, blue: 0.9621, alpha: 0.3))
				
			case .darkPastelPink: return Color(#colorLiteral(red: 0.5916, green: 0.3623, blue: 0.3867, alpha: 0.61))
			case .darkPastelBlue: return Color(#colorLiteral(red: 0.3623, green: 0.5091, blue: 0.5916, alpha: 0.61))
			case .darkPastelGreen: return Color(#colorLiteral(red: 0.4220, green: 0.5916, blue: 0.3626, alpha: 0.61))
			case .darkPastelBrown: return Color(#colorLiteral(red: 0.5916, green: 0.4999, blue: 0.3626, alpha: 0.61))
			case .darkPastelPurple: return Color(#colorLiteral(red: 0.5320, green: 0.3623, blue: 0.5958, alpha: 0.61))
		}
	}
}
