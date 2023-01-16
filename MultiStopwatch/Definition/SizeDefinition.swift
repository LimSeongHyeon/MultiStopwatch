//
//  SizeDefinition.swift
//  MultiStopwatch
//
//  Created by Lim on 2023/01/17.
//

import Foundation
import SwiftUI

/// 사용하는 모든 Element의 width가 정의되어 있다
/// getSize를 호출하여 해당 Size(CGFloat)를 반환할 수 있다.
enum ElementWidth
{
	case longWidth
	case xLongWidth
	
	/// 해당 사이즈를 CGFloat로 반환
	func getSize() -> CGFloat
	{
		switch self
		{
			case .longWidth: return CGFloat(286)
			case .xLongWidth: return CGFloat(320)
		}
	}
}


