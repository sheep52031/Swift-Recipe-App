//
//  ContentView.swift
//  Recipe List App
//
//  Created by 林家任 on 2022/2/14.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading){
                
                Text("All Recipes")
                    .bold()
                    .padding(.top,40)
                    .font(.largeTitle)
                
                ScrollView{
                    LazyVStack(alignment:.leading){
                        ForEach(model.recipes) { r in
                            
                            NavigationLink(
                                destination:RecipeDetailView(recipe:r), label: {
                                
                                //MARK: Row Item
                                HStack(spacing: 20.0) {
                                    Image(r.image)
                                        .resizable()
                                        .scaledToFill().frame(width: 70, height: 70, alignment: .center).clipped().cornerRadius(5)
                                    
                                    VStack(alignment:.leading){
                                        Text(r.name).foregroundColor(.black).bold()
                                        RecipeHighlights(highlights: r.highlights).foregroundColor(.black)
                            
                                    }
                                    
                                    
                                }
                            })
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .padding(.leading)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView().environmentObject(RecipeModel()  )
    }
}
