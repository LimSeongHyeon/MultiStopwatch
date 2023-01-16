	//
	//  FontDefinition.swift
	//  MultiStopwatch
	//
	//  Created by Lim on 2023/01/17.
	//

import Foundation
import SwiftUI

	/// 사용되는 모든 Element내부 폰트의 정의가 담겨있다.
	/// getFont를 호출하여 해당 Font를 반환할 수 있다.
enum ElementFont
{
	case title
	case subtitle
	case medium
	case small
	
		/// 해당 폰트를 Font로 반환
	func getFont() -> Font
	{
		switch self
		{
			case .title: return Font.system(size: 24, weight: .bold)
			case .subtitle: return Font.system(size: 18, weight: .semibold)
			case .medium: return Font.system(size: 16, weight: .medium)
			case .small: return Font.system(size: 14, weight: .light)
		}
	}
}
