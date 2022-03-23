//
//  RecipeHighlights.swift
//  Recipe List App
//
//  Created by 林家任 on 2022/3/20.
//

import SwiftUI

struct RecipeHighlights: View {
    
    var allHightlights = ""
    
        
        init(highlights:[String]){
            
            //Loop throgh the highlights and bulid the string
            
            for index in 0..<highlights.count{
                
                // If this is the last item,don't add a comma
                if index == highlights.count-1{
                    
                    allHightlights += highlights[index]
                }
                else {
                    
                    allHightlights += highlights[index] + ", "
                }
            }
        }
        
    var body: some View {
        Text(allHightlights)
            .font(Font.custom("Avenir",size:15))
    }
}

struct RecipeHighlights_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHighlights(highlights: ["test0","test1"])
    }
}
