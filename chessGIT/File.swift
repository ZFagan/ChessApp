//
//  File.swift
//  chessGIT
//
//  Created by ZemoF on 12/13/19.
//  Copyright © 2019 Zemo Fagan. All rights reserved.
//

import Foundation

func safeSpace(local:[Int], color:String, board:[[String]]) -> [[Int]]{
    print(board)
   
    //first String(number!) dictates if the space is safe or not 1 safe 0 dangerouse 2 taken 3 kill
    // second didgit dictates type of threat 0 pawn 1 king 2 knight 3 bishop 4 rook 5 queen
    //ordered pair of cordinate location of threat -1 dictates no threat single dictates dictates top row

   var enemy="B"
    var outOut:[[Int]]=[[]]
    if enemy==color{
       enemy="W"
        let j:Int = local[0]-1
        var k:Int = local[1]-1
        if j > -1 && j < 8 && k > -1 && k < 8{
           if board[j][k].contains(enemy+"P"){
            outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
            }
        }
        k+=2
        if j > -1 && j < 8 && k > -1 && k < 8{
        if board[j][k].contains(enemy+"P"){
            outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
        }
        }
    }else{
       let j = local[0]+1
        var k = local[1]-1
        if j > -1 && j < 8 && k > -1 && k < 8{
           if board[j][k].contains(enemy+"P"){
               outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
            }
        }
        k+=2
        if j > -1 && j < 8 && k > -1 && k < 8{
        if board[j][k].contains(enemy+"P"){
            outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
        }
        }
    }
   
   print(enemy)
    print(color)
    if local[0] > 0{
       for i in 0...local[0]{
        var trigger=false
           let j = local[0]-i
           let k = local[1]
           if j > 7 || j < 0 || k > 7 || k < 0{
               break
           }
        if String(board[j][k].first!) == color{
            let peiceVal=board[j][k].dropFirst()
            if String(peiceVal.first!) != "K"{
                if i != 0{
  // this blocks check
                    outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                     trigger=true
                    break
                   
                }
                if i == 0{
                    // this is a friendly peice in the spot of atempted move
                    outOut.append(genSaftyData(loc:[j,k],fe:2, board: board))
                     trigger=true
                    break
                }
            }
        }else if String(board[j][k].first!) == enemy{
            //this is an enemy peice
            let peiceVal=board[j][k].dropFirst()
            switch String(peiceVal.first!) {
            case "Q":
                //this is the queen
                if i==0{
                    //i can kill the queen
                    outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                }else{
                    // the queen will kill me
                    outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                     trigger=true
                              break
                }
            case "R":
        if i==0{
            //i can kill the rook
                           outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
        }else{
            //the rook can kill me
            outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
             trigger=true
                      break
                }
            default:
                 if i==0{
                                   outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                 }else{
                    outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                     trigger=true
                    break
                }
            }
            
        }
        if trigger{
            break
        }
        }
       
    }
    if local[1] > 0{
       for i in 0...local[1]{
        var triger=false
           let j = local[0]
           let k = local[1]-i
           if String(board[j][k].first!) == color{
                      let peiceVal=board[j][k].dropFirst()
                      if String(peiceVal.first!) != "K"{
                          if i != 0{
            // this blocks check
                              outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                              break
                          }
                          if i == 0{
                              // this is a friendly peice in the spot of atempted move
                              outOut.append(genSaftyData(loc:[j,k],fe:2, board: board))
                              break
                          }
                      }
                  }else if String(board[j][k].first!) == enemy{
                      //this is an enemy peice
                      let peiceVal=board[j][k].dropFirst()
                      switch String(peiceVal.first!) {
                      case "Q":
                          //this is the queen
                          if i==0{
                              //i can kill the queen
                              outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                          }else{
                              // the queen will kill me
                              outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                            triger=true
                            break
                          }
                      case "R":
                  if i==0{
                      //i can kill the rook
                                     outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                  }else{
                      //the rook can kill me
                      outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                     triger=true
                    break
                          }
                      default:
                           if i==0{
                                             outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                           }else{
                              
                            outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                             triger=true
                            break
                            
                          }
                      }
                      
                  }
           if triger{
            break
        }
        }
    }
    if local[0] < 7{
       for i in local[0]...7{
        var triger=false
           let j = i
           let k = local[1]
           if String(board[j][k].first!) == color{
                      let peiceVal=board[j][k].dropFirst()
                      if String(peiceVal.first!) != "K"{
                          if i != local[0]{
            // this blocks check
                              outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                            triger=true
                              break
                          }
                          if i == local[0]{
                              // this is a friendly peice in the spot of atempted move
                              outOut.append(genSaftyData(loc:[j,k],fe:2, board: board))
                            triger=true
                              break
                          }
                      }
                  }else if String(board[j][k].first!) == enemy{
                      //this is an enemy peice
                      let peiceVal=board[j][k].dropFirst()
                      switch String(peiceVal.first!) {
                      case "Q":
                          //this is the queen
                          if i==local[0]{
                              //i can kill the queen
                              outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                          }else{
                              // the queen will kill me
                              outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                            triger=true
                                        break
                          }
                      case "R":
                  if i==local[0]{
                      //i can kill the rook
                                     outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                  }else{
                      //the rook can kill me
                      outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                    triger=true
                                break
                          }
                      default:
                           if i==local[0]{
                                             outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                           }else{
                              outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                            triger=true
                              break
                          }
                      }
                      
                  }
        if triger{
            break
        }
        }
    }
    if local[1] < 7{
       for i in local[1]...7{
        var  trigger=false
           let j = local[0]
           let k = i
          if String(board[j][k].first!) == color{
                      let peiceVal=board[j][k].dropFirst()
                      if String(peiceVal.first!) != "K"{
                          if i != local[1]{
            // this blocks check
                              outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                             trigger=true
                              break
                          }
                          if i == local[1]{
                              // this is a friendly peice in the spot of atempted move
                              outOut.append(genSaftyData(loc:[j,k],fe:2, board: board))
                             trigger=true
                              break
                          }
                      }
                  }else if String(board[j][k].first!) == enemy{
                      //this is an enemy peice
                      let peiceVal=board[j][k].dropFirst()
                      switch String(peiceVal.first!) {
                      case "Q":
                          //this is the queen
                          if i==local[1]{
                              //i can kill the queen
                              outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                          }else{
                              // the queen will kill me
                              outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                             trigger=true
                                        break
                          }
                      case "R":
                  if i==0{
                      //i can kill the rook
                                     outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                  }else{
                      //the rook can kill me
                      outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                     trigger=true
                                break
                          }
                      default:
                           if i==local[1]{
                                             outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                           }else{
                              outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                             trigger=true
                              break
                          }
                      }
                      
                  }
        if trigger{
            break
        }
        }
    }
    for i in 0...7{
        var trigger=false
           let j = local[0]-i
           let k = local[1]-i
        if j > 7 || j < 0 || k > 7 || k < 0{
                      break
                  }
           if String(board[j][k].first!) == color{
                      let peiceVal=board[j][k].dropFirst()
                      if String(peiceVal.first!) != "K"{
                          if i != 0{
            // this blocks check
                              outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                            trigger=true
                              break
                          }
                          if i == 0{
                              // this is a friendly peice in the spot of atempted move
                              outOut.append(genSaftyData(loc:[j,k],fe:2, board: board))
                            trigger=true
                              break
                          }
                      }
                  }else if String(board[j][k].first!) == enemy{
                      //this is an enemy peice
                      let peiceVal=board[j][k].dropFirst()
                      switch String(peiceVal.first!) {
                      case "Q":
                          //this is the queen
                          if i==0{
                              //i can kill the queen
                              outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                          }else{
                              // the queen will kill me
                              outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                            trigger=true
                                        break
                          }
                      case "B":
                  if i==0{
                      //i can kill the bishop
                                     outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                  }else{
                      //the rook can kill me
                      outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                    trigger=true
                                break
                          }
                      case "P":
                        if i==0{
                                             //i can kill the pawn
                                                            outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                                         }else if i == 1{
                            if killPossible(l: [j,k], board: board){
                                  outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                                trigger=true
                                break
                            }
                                            
                                                 }else{
                                                     
                                                     outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                                                     trigger=true
                                                     break
                                                 }
                      default:
                           if i==0{
                                             outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                           }else{
                              outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                            trigger=true
                              break
                          }
                      }
                      
                  }
        if trigger{break}
        }
    for i in 0...7{
        var trigger=false
        let j = local[0]-i
        let k = local[1]+i
        if j > 7 || j < 0 || k > 7 || k < 0{
            break
        }
    if String(board[j][k].first!) == color{
                            let peiceVal=board[j][k].dropFirst()
                            if String(peiceVal.first!) != "K"{
                                if i != 0{
                    // this blocks check
                                    outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                                    trigger=true
                                    break
                                }
                                if i == 0{
                                    // this is a friendly peice in the spot of atempted move
                                    outOut.append(genSaftyData(loc:[j,k],fe:2, board: board))
                                    trigger=true
                                    break
                                }
                            }
                        }else if String(board[j][k].first!) == enemy{
                            //this is an enemy peice
                            let peiceVal=board[j][k].dropFirst()
                            switch String(peiceVal.first!) {
                            case "Q":
                                //this is the queen
                                if i==0{
                                    //i can kill the queen
                                    outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                                }else{
                                    // the queen will kill me
                                    outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                                    trigger=true
                                                break
                                }
                            case "B":
                        if i==0{
                            //i can kill the bishop
                                            outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                        }else{
                            //the rook can kill me
                            outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                            trigger=true
                                        break
                                }
                            case "P":
                                if i==0{
                                                    //i can kill the pawn
                                                                    outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                                                }else if i==1{
                                    if killPossible(l: [j,k], board: board){
                                        outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                                    trigger=true
                                        break
                                    }
                                                    
                                                        }else{
                                                            
                                                            outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                                                            trigger=true
                                                            break
                                                        }
                            default:
                                    if i==0{
                                                    outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                                    }else{
                                    outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                                    trigger=true
                                    break
                                }
                            }
                            
                        }
        if trigger{break}
    }
    for i in 0...7{
        var trigger=false
        let j = local[0]+i
        let k = local[1]-i
        if j > 7 || j < 0 || k > 7 || k < 0{
            
            break
        }
        if String(board[j][k].first!) == color{
                            let peiceVal=board[j][k].dropFirst()
                            if String(peiceVal.first!) != "K"{
                                if i != 0{
                    // this blocks check
                                    outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                                    trigger=true
                                    break
                                }
                                if i == 0{
                                    // this is a friendly peice in the spot of atempted move
                                    outOut.append(genSaftyData(loc:[j,k],fe:2, board: board))
                                    trigger=true
                                    break
                                }
                            }
                        }else if String(board[j][k].first!) == enemy{
                            //this is an enemy peice
                            let peiceVal=board[j][k].dropFirst()
                            switch String(peiceVal.first!) {
                            case "Q":
                                //this is the queen
                                if i==0{
                                    //i can kill the queen
                                    outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                                }else{
                                    // the queen will kill me
                                    outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                                    trigger=true
                                                break
                                }
                            case "B":
                        if i==0{
                            //i can kill the bishop
                                            outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                        }else{
                            //the rook can kill me
                            outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                            trigger=true
                                        break
                                }
                            case "P":
                                if i==0{
                                                    //i can kill the pawn
                                                                    outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                                                }else if i==1{
                                    if killPossible(l: [j,k], board: board){
                                        outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                                    trigger=true
                                        break
                                    }
                                                    
                                                        }else{
                                                            
                                                            outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                                                            trigger=true
                                                            break
                                                        }
                            default:
                                    if i==0{
                                                    outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                                    }else{
                                    
                                    outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                                    trigger=true
                                    break
                                }
                            }
                            
                        }
        if trigger==true{
            break
            
        }
    }
    for i in 0...7{
        var trigger=false
        print("start Diagonal")
        let j = local[0]+i
        let k = local[1]+i
        if j > 7 || j < 0 || k > 7 || k < 0{
            break
        }
        if String(board[j][k].first!) == color{
                            let peiceVal=board[j][k].dropFirst()
                            if String(peiceVal.first!) != "K"{
                                if i != 0{
                    // this blocks check
                                    outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                                    trigger=true
                                    break
                                }
                                if i == 0{
                                    // this is a friendly peice in the spot of atempted move
                                    outOut.append(genSaftyData(loc:[j,k],fe:2, board: board))
                                    trigger=true
                                    break
                                }
                            }
                        }else if String(board[j][k].first!) == enemy{
                            //this is an enemy peice
                            let peiceVal=board[j][k].dropFirst()
                            switch String(peiceVal.first!) {
                            case "Q":
                                //this is the queen
                                if i==0{
                                    //i can kill the queen
                                    outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                                }else{
                                    // the queen will kill me
                                    outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                                    trigger=true
                                                break
                                }
                            case "B":
                        if i==0{
                            //i can kill the bishop
                                            outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                        }else{
                            //the rook can kill me
                            outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                            trigger=true
                                        break
                                }
                            case "P":
                                if i==0{
                                                    //i can kill the pawn
                                                                    outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                                                }else if i==1{
                                if killPossible(l: [j,k], board: board){
                                        outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                                    trigger=true
                                        break
                                    }else{
                                    trigger=true
                                    break
                                }
                                                    
                                                        }else{
                                                            
                                                            outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                                                            trigger=true
                                                            break
                                                        }
                            default:
                                    if i==0{
                                                    outOut.append(genSaftyData(loc:[j,k],fe:3, board: board))
                                    }else{
                                    outOut.append(genSaftyData(loc:[j,k],fe:1, board: board))
                                    trigger=true
                                    break
                                }
                            }
                            
                        }
        if trigger{break}
    }
       for i in -2...2{
        if i.magnitude==2{
               var j=local[0]+i
               var k=local[1]+1
              var l=local[1]-1
               if j < 8 && j > -1{
                   if k < 8 && k > -1{
                   if board[j][k].contains(enemy+"H"){
                       outOut.append(genSaftyData(loc:[j,k],fe:0, board: board))
                   }
               }
                  if l < 8 && l > -1{
                   if board[j][l].contains(enemy+"H"){
                    outOut.append(genSaftyData(loc:[j,l], fe:0, board: board))
                   }
               }
               }
               if i.magnitude==1{
               j=local[1]+i
               k=local[0]+1
               l=local[0]-1
               if j < 8 && j > -1{
                   if k < 8 && k > -1{
                   if board[k][j].contains(enemy+"H"){
                       outOut.append(genSaftyData(loc:[k,j], fe:0, board:board))
                   }
               }
                  if l < 8 && l > -1{
                   if board[l][j].contains(enemy+"H"){
                       outOut.append(genSaftyData(loc:[l,j], fe:0, board:board))
                   }
               }
               }
           }
       }
       
        
   
}
    outOut.removeFirst()
    print(outOut)
         return outOut
        }

func genSaftyData(loc:[Int], fe:Int, board:[[String]])->[Int]{
   var type=0
    var peice=board[loc[0]][loc[1]]
    if peice != "e"{
        peice.removeFirst()
    }
    switch peice.first {
    case "P":
        type=0
    case "Q":
        type=5
    case "K":
        type=1
    case "R":
        type=4
    case "B":
        type=3
    case "e":
        type = -1
    case "H":
        type=2
        
    default:
        type = -1
    }
    
    var locDat = -1
    if type != -1{
       locDat = loc[0]*10+loc[1]
    }

   let out=[fe,type,locDat]
        return out
}

func consolidate(safe:[[Int]],cor:[Int])->Int{
    print(cor)

    var out=0
    for i in 0...safe.count-1{
      print(safe[i])
        print(out)
            if safe[i][0] == 1 && out != 3{
                out = 2
            }else if safe[i][0] == 2{
                out = boardColorsCurrent[cor[0]][cor[1]]
                break
            }else if safe[i][0] == 3{
                out = 3
            }else if safe[i][0] == 0{
                 out = boardColorsCurrent[cor[0]][cor[1]]
                break
            }
        
        if out < 2{
            break
        }
    }
    
    return out
}

func killPossible(l:[Int], board:[[String]])->Bool{
    
    if moveCount[0]==1{
        let i = l[0]-1
        let j = l[1]-1
        let k = l[1]+1
        if i > -1{
            if j > -1{
            if board[i][j].first=="W"{
                return true
            }
            
        }
        
        if k < 8{
            if board[i][k].first=="W"{
                return true
            }
        }
        }
        
    }else{
        let i = l[0]+1
        let j = l[1]-1
        let k = l[1]+1
        if i<8{
            if j > -1{
            if board[i][j].first=="B"{
                return true
            }
            
        }
        
        if k < 8{
            if board[i][k].first=="B"{
                return true
            }
        }
        }
    }
    return false
}




