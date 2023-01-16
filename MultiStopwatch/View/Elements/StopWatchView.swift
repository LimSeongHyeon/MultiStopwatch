//
//  StopWatchView.swift
//  MultiStopwatch
//
//  Created by Lim on 2023/01/17.
//

import SwiftUI

struct StopWatchView: View
{
	@Environment(\.colorScheme) var colorScheme
	
	var title : String
	var explain : String
	var currentTime : String
	var limitTime : String
	
	var highlight : Bool = false
	var hightlightColor : Color?
	
	let witdh : CGFloat = ElementWidth.longWidth.getSize()
	let highlightWidth : CGFloat = ElementWidth.xLongWidth.getSize()
	
    var body: some View
	{
		VStack(spacing: 0)
		{
			ZStack
			{
				if let hightlightColor = hightlightColor,
				   highlight
				{
					VStack
					{
						RoundedRectangle(cornerRadius: 20)
							.frame(width: highlightWidth, height: 34)
							.foregroundColor(hightlightColor)
					}
				}
				
				HStack
				{
					Text(title)
						.font(ElementFont.title.getFont())
					
					Spacer()
					
					Text("\(currentTime) / \(limitTime)")
						.font(ElementFont.subtitle.getFont())
				}.frame(width: witdh)
			}

			
			Rectangle()
				.frame(height: 1)
			
			Text(explain)
				.font(ElementFont.medium.getFont())
				.frame(width:witdh, alignment: .leading)
		}
		.foregroundColor(ElementColor.foregroundColor.getColor(colorScheme: colorScheme))
		.frame(width: witdh, height: 54)
    }
}

struct StopWatchView_Previews: PreviewProvider
{
    static var previews: some View
	{
		StopWatchView(title: "독서",
					  explain: "클린코드 읽고 정리하기",
					  currentTime: "00:58:21",
					  limitTime: "1:00:00",
					  highlight: true,
					  hightlightColor: ThemeColor.lightPastelPink.getColor())
    }
}
