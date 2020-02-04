//
//  gameLogic.swift
//  chessGIT
//
//  Created by ZemoF on 11/30/19.
//  Copyright © 2019 Zemo Fagan. All rights reserved.
//

 import Foundation

func findKing(color:String)->[Int]{
    for i in 0...7{
        for j in 0...7{
            if boardPeiceCurrent[i][j].contains(color+"K"){
           
                return [i,j]
            }
            print(boardPeiceCurrent[i][j])
        }
    }
    return [-1,-1]
}

func willCauseCheck(loc:[Int])->[Character]{
    print("check Start")
    let col=String(boardPeiceCurrent[loc[0]][loc[1]].first!)
    var enemy = "B"
    if col=="B"{
        enemy="W"
    }

    let kingLoc=findKing(color:col)
    if kingLoc[0] != -1{
        
        
        if kingLoc[0]==loc[0]{
            // horizontay aligned
        
            if kingLoc[1]>loc[1]{
                for i in loc[1]...kingLoc[1]{
                    if boardPeiceCurrent[loc[0]][i] != "e" && i != kingLoc[1] && i != loc[1]{
                        print("blocked horizontal 1")
                    
                        return ["f"]
                    }
                }
                
            }else{
                for i in kingLoc[1]...loc[1]{
                    if boardPeiceCurrent[loc[0]][i] != "e" && i != kingLoc[1] && i != loc[1]{
                        
                    print("blocked horizontal 2")
                        return ["f"]
                    }
                }
            }
            print("horizontaly alligned")
            if loc[1]==0 || loc[1]==7{
                print("no chance of block")
                return ["f"]
            }
            if loc[1]>kingLoc[1]{
                for i in loc[1]...7{
                    if String(boardPeiceCurrent[loc[0]][i].first!) == col && loc[1] != i{
                        
                    print("there is another peice of the same color in the way")
                        return["f"]
                    }else if (boardPeiceCurrent[loc[0]][i].contains(enemy+"Q") || boardPeiceCurrent[loc[0]][i].contains(enemy+"R")){
                        print("blocking the enemy queen or rook")
                    
                        return ["t","h"]
                    }
                }
            }else{
                for i in 0...loc[1]{
                    let j = loc[1]-i
                    if String(boardPeiceCurrent[loc[0]][j].first!) == col && loc[1] != j{
                        print("there is another peice of the same color in the way")
                    
                                       return["f"]
                                   }else if (boardPeiceCurrent[loc[0]][j].contains(enemy+"Q") || boardPeiceCurrent[loc[0]][j].contains(enemy+"R")){
                                       print("blocking the enemy queen or rook")
                                       return ["t","h"]
                                   }
                }
                
            }
            
            
        }
        if kingLoc[1]==loc[1]{
            
             print("verticaly alligned")
            if loc[0]==0 || loc[0]==7{
                print("no chance to block")
            
                return ["f"]
            }
            if kingLoc[0]>loc[0]{
                for i in loc[0]...kingLoc[0]{
                    if boardPeiceCurrent[i][loc[1]] != "e" && i != kingLoc[0] && i != loc[0]{
                        print("vertical peice in between 1")
                    
                        return ["f"]
                    }
                }
                
            }else{
                for i in kingLoc[0]...loc[0]{
                if boardPeiceCurrent[i][loc[1]] != "e" && i != kingLoc[0] && i != loc[0]{
                    print("vertical peice in between 2")
                
                    return ["f"]
                }
            }

            if loc[0]>kingLoc[0]{
                           for i in loc[0]...7{
                               if String(boardPeiceCurrent[i][loc[1]].first!) == col && loc[0] != i{
                              print("peice of same color blocking")
                                   return["f"]
                               }else if (boardPeiceCurrent[i][loc[1]].contains(enemy+"Q") || boardPeiceCurrent[i][loc[1]].contains(enemy+"R")){
                                   print("blocking the enemy queen or rook")
                               
                                   return ["t","v"]
                               }
                           }
                       }else{
                           for i in 0...loc[0]{
                               let j = loc[0]-i
                               if String(boardPeiceCurrent[j][loc[1]].first!) == col && loc[0] != j{
                                                  print("peice of same color blocking")
                                                  return["f"]
                                              }else if (boardPeiceCurrent[j][loc[1]].contains(enemy+"Q") || boardPeiceCurrent[j][loc[1]].contains(enemy+"R")){
                                                  
                                              
                                     print("blocking the enemy queen or rook")
                                                  return ["t","v"]
                                              }
                           }
                           
                       }
            
        }
            
        }
        if loc[0] == 0 || loc[0] == 7 || loc[1] == 0 || loc[1] == 7{
            print("allignment doesn't matter")
            return ["f"]
        }else{
            let diag=[kingLoc[0]-loc[0],kingLoc[1]-loc[1]]
            if diag[0]==diag[1]{
                 print("diagnoaly alligned")
                if kingLoc[0]>loc[0]{
                    for i in loc[0]...kingLoc[0]{
                        let j = loc[1]+i-loc[0]
                        if boardPeiceCurrent[i][j] != "e" && loc[0] != i && kingLoc[0] != i{
                            print("another peice in the way diagonal 1")
                        
                            return["f"]
                        }
                    }
                }else{
                    for i in kingLoc[0]...loc[0]{
                                           let j = loc[1]+i-loc[0]
                                           if boardPeiceCurrent[i][j] != "e" && loc[0] != i && kingLoc[0] != i{
                                               print("another peice in the way diagonal 2")
                                               return["f"]
                                           }
                                       }
                }
                
                if kingLoc[0]>loc[0]{
                    for i in 0...loc[0]{
                        let j = loc[1]-i
                        let k = loc[0]-i
                        if k<0 || j<0{
                            print("issue with count")
                        
                            break
                        }
                        if boardPeiceCurrent[k][j].contains(enemy+"B") || boardPeiceCurrent[k][j].contains(enemy+"Q"){
                            print("enemy bishop or queen being blocked dl")
                        
                                                  return["t","l"]
                        }else if(String(boardPeiceCurrent[k][j].first!)==col && loc[0] != k){
                            print("another peice of the same color blocking diagonal l")
                        
                            return["f"]
                            
                        }
                                                  }
                }else{
                    for i in loc[0]...7{
                       
                                           let j = loc[1]+i-loc[0]
                        if j>7{
                                                   break
                                               }
                                           if boardPeiceCurrent[i][j].contains(enemy+"B") || boardPeiceCurrent[i][j].contains(enemy+"Q"){
                                                print("enemy bishop or queen being blocked dl")
                                                   return["t","l"]
                                                   }else if(String(boardPeiceCurrent[i][j].first!)==col && loc[0] != i){
                                                   
                                                   print("another peice of the same color blocking diagonal l")
                                                   return["f"]
                                                  
                                                   }
                                                   }
                }
                
            }
            if diag[0]  == -diag[1]{
                 print("diagonaly alligned")
                if kingLoc[0]>loc[0]{
                                   for i in loc[0]...kingLoc[0]{
                                       let j = loc[1]+(i-loc[0])
                                       if boardPeiceCurrent[i][j] != "e" && loc[0] != i && kingLoc[0] != i{
                                           return["f"]
                                       }
                                   }
                               }else{
                                   for i in kingLoc[0]...loc[0]{
                                                  let j = loc[1]-(i-loc[0])
                                                  if boardPeiceCurrent[i][j] != "e" && loc[0] != i && kingLoc[0] != i{
                                                  return["f"]
                                                  }
                                                  }
                               }
                if kingLoc[0]>loc[0]{
                    for i in 0...loc[0]{
                        let j = loc[1]+i
                        let k = loc[0]-i
                        if k>0 || j>7{
                            break
                         
                        }
                        if boardPeiceCurrent[k][j].contains(enemy+"B") || boardPeiceCurrent[k][j].contains(enemy+"Q"){
                            return["t","l"]
                        }else if(String(boardPeiceCurrent[k][j].first!)==col && loc[0] != k){
                            return["f"]
                            
                        }
                    }
                }else{
                    for i in loc[0]...7{
                        let j = loc[1]-(i-loc[0])
                        let k = i
                        if j<0{
                            break
                        }
                        if boardPeiceCurrent[k][j].contains(enemy+"B") || boardPeiceCurrent[k][j].contains(enemy+"Q"){
                            return["t","l"]
                        }else if(String(boardPeiceCurrent[k][j].first!)==col && loc[0] != k){
                            return["f"]
                            
                        }
                    }
                }
                
            }
        }
        
        return ["f"]
    }else{
        print("no King found")
        return ["f"]
    }
    
}
