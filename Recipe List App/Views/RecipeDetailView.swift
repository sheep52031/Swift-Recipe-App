//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by 林家任 on 2022/2/17.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
         
        ScrollView{
            
            VStack(alignment:.leading){
                
                // MARK: Recipe Image
                Image(recipe.image).resizable().scaledToFill()
            
                //MARK: Ingredients
                VStack(alignment:.leading){
                
                    Text("Ingredients").font(.headline).padding([.top, .leading, .bottom])
            
                ForEach(recipe.ingredients,id:\.self) { item in
                    Text("• "+item).padding([.leading, .bottom, .trailing])
                }
             }
                
                //MARK: Divider
                Divider()
                
                //MARK: Directions
                VStack(alignment:.leading){
                    Text("Directions").font(.headline).padding([.top, .leading, .bottom])
                    ForEach(0..<recipe.directions.count,id:\.self){ index in
                        Text(String(index+1)+". "+recipe.directions[index]).padding([.top, .leading, .bottom])
                    }
                }
            }
        }.navigationBarTitle(recipe.name)
    }
}


struct RecipeDetailView_Previews: PreviewProvider {
        static var previews: some View {
            // Create a dummy recipe and pass it into the detail view so that we can see a preview.
            let model = RecipeModel()
        
            RecipeDetailView(recipe:model.recipes[0])
        }
    }