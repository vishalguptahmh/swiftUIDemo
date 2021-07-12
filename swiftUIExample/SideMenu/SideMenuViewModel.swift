//
//  SideMenuViewModel.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 11-July-2021.
//

import Foundation
enum SideMenuViewModel: Int, CaseIterable {
    
    case profile
    case lists
    case bookmarks
    case messages
    case notification
    case logout
 
    var title : String {
        switch self {
        case .profile: return "Profile"
        case .lists : return "List"
        case .bookmarks : return "Bookmarks"
        case .messages : return "Message"
        case .notification : return "Notification"
        case .logout : return "Logout"
        }
    }
    
    
    var ImageName : String {
        switch self {
        case .profile: return "person"
        case .lists : return "list.bullet"
        case .bookmarks : return "bookmark"
        case .messages: return "bubble.left"
        case .notification : return "bell"
        case .logout : return "arrow.left.square"
        }
    }
    
    
}
