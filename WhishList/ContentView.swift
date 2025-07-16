//
//  ContentView.swift
//  WhishList
//
//  Created by MahmoudRamadan on 15/07/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    //act as connection between view and container
    @Environment(\.modelContext) private var modelContext
    @Query private var wishList:[Wish]
    @State var isALertShown: Bool = false
    @State var title: String = ""
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach (wishList) { wish in
                    Text(wish.title)
                        .font(.title.weight(.light))
                        .padding(.vertical,8)
                        .swipeActions {
                            Button("Delete", role:.destructive) {
                                modelContext.delete(wish)
                            }
                        }
                }
            }
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isALertShown.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .imageScale(.large)
                    }
                }
                if  wishList.isEmpty != true {
                    ToolbarItem(placement: .bottomBar) {
                        Text("\(wishList.count) Wish\(wishList.count > 1 ? "es": "") ")
                    }
                }
            }
            .alert("Create a new wish ", isPresented: $isALertShown, actions: {
                TextField("Enter a wish", text: $title)
                Button {
                    modelContext.insert(Wish(title: title))
                    title = ""
                } label: {
                    Text("Save")
                }
               
                
            })
            .navigationTitle("WishList")
            .overlay {
                if wishList.isEmpty {
                    ContentUnavailableView("My WishList", systemImage: "heart.circle", description:
                                            Text("No more wishes, try add more wishes"))
                }
            }
        }
    }
}

#Preview ("Sample Data"){
    let container = try! ModelContainer(for: Wish.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
    
    container.mainContext.insert(
        Wish(title: "Read Golden Habits book")
    )
    container.mainContext.insert(
        Wish(title: "Buy App code")
    )
    container.mainContext.insert(
        Wish(title: "Make more money")
    )
    
   return  ContentView()
        .modelContainer(container)
    
}

#Preview {
    ContentView()
        .modelContainer(for: Wish.self, inMemory: true)
}
