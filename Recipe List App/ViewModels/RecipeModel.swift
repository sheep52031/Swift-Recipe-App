//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by 林家任 on 2022/2/14.
//

import Foundation

class RecipeModel:ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init(){
        //Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
    }
    
    
    
}
