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
			Text("first")
				.tabItem { Image(systemName: "house") }
				.tag(Tabitems.calendar)
			
			Text("second")
				.tabItem { Image(systemName: "house") }
				.tag(Tabitems.home)
			
			Text("third")
				.tabItem { Image(systemName: "house") }
				.tag(Tabitems.setting)
			
		}
		.accentColor(.green)
		.tabViewStyle(.automatic)
		
    }
}

struct MainTabView_Previews: PreviewProvider
{
    static var previews: some View
	{
        MainTabView()
    }
}
