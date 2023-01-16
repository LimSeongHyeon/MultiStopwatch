//
//  SettingView.swift
//  MultiStopwatch
//
//  Created by Lim on 2023/01/16.
//

import SwiftUI

struct SettingView: View
{
	@Environment(\.colorScheme) var colorScheme
	var body: some View
	{
		ZStack
		{
			ElementColor.backgroundColor.getColor(colorScheme: colorScheme)
				.ignoresSafeArea()
			VStack
			{
				Text("SettingView")
			}
		}
	}
}

struct SettingView_Previews: PreviewProvider
{
    static var previews: some View
	{
        SettingView()
    }
}
