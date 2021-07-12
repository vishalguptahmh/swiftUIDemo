//
//  BaseUIView.swift
//  swiftUIExample
//
//  Created by Vishal Gupta on 12-July-2021.
//

import SwiftUI

struct BaseUIView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct BaseUIView_Previews: PreviewProvider {
    static var previews: some View {
        BaseUIView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(.white)
            Text("Hello Dashboard")
        }
        
    }
}

struct MySmallImage :  View {
    var body: some View{
        Image("profiledp").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 30, height: 30)
            .clipped()
            .cornerRadius(150)
            .padding(.leading,5)
    }
}
struct loginButtonView: View {
    var body: some View {
        Text("Login")
            .font(.headline)
            .padding()
            .foregroundColor(.white)
            .frame(width: 320, height: 60)
            .background(Color.black)
            .cornerRadius(30.0)
    }
}

struct UserNameTextFieldView: View {
    @Binding var username : String
    var body: some View {
        TextField("UserName", text: $username)
            .padding()
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0))
            .cornerRadius(5.0)
            .padding(.bottom,20)
    }
}

struct PasswordTextFieldView: View {
    @Binding var password   : String
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0))
            .cornerRadius(5.0)
            .padding(.bottom,20)
    }
}
