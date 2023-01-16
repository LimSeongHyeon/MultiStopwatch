//
//  CalendarView.swift
//  MultiStopwatch
//
//  Created by Lim on 2023/01/16.
//

import SwiftUI

struct CalendarView: View
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
				ScrollView
				{
					Text("CalendarView")
				}
			}
		}
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
