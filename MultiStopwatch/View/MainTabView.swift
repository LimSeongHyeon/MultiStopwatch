//
//  MainTabView.swift
//  MultiStopwatch
//
//  Created by Lim on 2023/01/16.
//

import SwiftUI



struct MainTabView: View
{
	@Environment(\.colorScheme) var colorScheme
	@State private var currentTab: Tabitems = .home
	
	// tag로 사용하기 위해 Hashable 프로토콜 준수
	private enum Tabitems: Hashable
	{
		 case calendar
		 case home
		 case setting
	}
	
    var body: some View
	{
		TabView(selection: $currentTab)
		{
			Group
			{
				CalendarView()
					.tabItem {
						VStack
						{
							Image(systemName: "calendar")
							Text("Calendar")
						}
					}
					.tag(Tabitems.calendar)
			 
				 HomeView()
					 .tabItem{
						 VStack
						 {
							 Image(systemName: "stopwatch")
							 Text("Home")
						 }
					 }
					 .tag(Tabitems.home)
				 
				 SettingView()
					 .tabItem {
						 VStack
						 {
							 Image(systemName: "gearshape")
							 Text("Settings")
						 }
					 }
					 .tag(Tabitems.setting)
				
			}
			.toolbar(.visible, for: .tabBar)
			.toolbarBackground(ElementColor.tabColor.getColor(colorScheme: colorScheme), for: .tabBar)
		}
		.accentColor(ElementColor.foregroundColor.getColor(colorScheme: colorScheme))
		
    }
}

struct MainTabView_Previews: PreviewProvider
{
    static var previews: some View
	{
        MainTabView()
    }
}
