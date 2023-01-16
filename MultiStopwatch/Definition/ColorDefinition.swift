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
			case .themeWhite : return Color(#colorLiteral(red: 0.9647058844566345, green: 0.929411768913269, blue: 0.8627451062202454, alpha: 1))
			case .themeBlack : return Color(#colorLiteral(red: 0.2083333283662796, green: 0.2083333283662796, blue: 0.2083333283662796, alpha: 1))
			
			case .lightTabColor: return Color(#colorLiteral(red: 0.9166666269302368, green: 0.8280849456787109, blue: 0.6607638597488403, alpha: 1))
			case .darkTabColor: return Color(#colorLiteral(red: 0.15000000596046448, green: 0.15000000596046448, blue: 0.15000000596046448, alpha: 0.5400000214576721))
				
			case .lightPastelPink: return Color(#colorLiteral(red: 0.970833420753479, green: 0.7038542032241821, blue: 0.7322562336921692, alpha: 0.6000000238418579))
			case .lightPastelBlue: return Color(#colorLiteral(red: 0.6262499690055847, green: 0.752174973487854, blue: 0.8999999761581421, alpha: 0.6000000238418579))
			case .lightPastelGreen: return Color(#colorLiteral(red: 0.5946947932243347, green: 0.8374999761581421, blue: 0.5897395610809326, alpha: 0.6000000238418579))
			case .lightPastelBrown: return Color(#colorLiteral(red: 0.8083333373069763, green: 0.6586570739746094, blue: 0.1279861330986023, alpha: 0.30000001192092896))
			case .lightPastelPurple: return Color(#colorLiteral(red: 0.8264665603637695, green: 0.5373958349227905, blue: 0.9624999761581421, alpha: 0.30000001192092896))
				
			case .darkPastelPink: return Color(#colorLiteral(red: 0.5916666388511658, green: 0.3623958230018616, blue: 0.3867863118648529, alpha: 0.6100000143051147))
			case .darkPastelBlue: return Color(#colorLiteral(red: 0.3623958230018616, green: 0.5091291069984436, blue: 0.5916666388511658, alpha: 0.6100000143051147))
			case .darkPastelGreen: return Color(#colorLiteral(red: 0.4220062494277954, green: 0.5916666388511658, blue: 0.3623958230018616, alpha: 0.6100000143051147))
			case .darkPastelBrown: return Color(#colorLiteral(red: 0.5916666388511658, green: 0.499958336353302, blue: 0.3623958230018616, alpha: 0.6100000143051147))
			case .darkPastelPurple: return Color(#colorLiteral(red: 0.5320562720298767, green: 0.3623958230018616, blue: 0.5916666388511658, alpha: 0.6100000143051147))
		}
	}
}
