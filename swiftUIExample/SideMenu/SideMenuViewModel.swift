//
//  SideMenuViewModel.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 11-July-2021.
//

import Foundation
enum SideMenuViewModel: Int, CaseIterable {
    
    case home
    case yourAccount
    case shopByCategory
    case todaysDeal
    case yourOrders
    case yourWishList
    case settings
    case logout
 
    var title : String {
        switch self {
        case .home: return "Home"
        case .yourAccount : return "Your Account"
        case .shopByCategory : return "Shop By Catagory"
        case .todaysDeal : return "Today's Deal"
        case .yourOrders : return "Your Orders"
        case .yourWishList : return "Your WishList"
        case .settings : return "Settings"
        case .logout : return "Logout"
        }
    }
    
    
    var ImageName : String {
        switch self {
        case .home: return "chevron.right"
        case .yourAccount : return "person.circle.fill"
        case .shopByCategory : return "bag.fill"
        case .todaysDeal : return "flame"
        case .yourOrders : return "bag"
        case .yourWishList : return "suit.heart.fill"
        case .settings : return "gear"
        case .logout : return "arrow.left.square"
        }
    }
    
    
}
