//
//  extrafile.swift
//  chessGIT
//
//  Created by ZemoF on 12/13/19.
//  Copyright © 2019 Zemo Fagan. All rights reserved.
//
//check and check mate logic
import Foundation
var stalematerunning=false

func isInCheck(board:[[String]])-> Int{
    
    var checkInd=0
    var color="W"

    var kl=[0,0]
    var spaceData:[[Int]]=[[]]
    var dangerData:[[Int]]=[[]]
print("is in check started")
    if moveCount[0]==0{
       kl = findKing(color:"W")
      //  print(kl)
        spaceData=safeSpace(local: kl, color: "W", board:board)
       // print(spaceData)
    }else{
        color="B"
    
        kl = findKing(color:"B")
        spaceData=safeSpace(local: kl, color: "B", board: board)
    }
    
    
    //print("SpaceDataWriten")
    for i in 0...spaceData.count-1{
        if spaceData[i][0]==2{
            //print("error taken")
        }else if spaceData[i][0]==3{
           // print("error kill spot detected")
        }else if spaceData[i][0]==0{
           // print("danger will robbinson")
            //check
        checkInd = 1

        } else if spaceData[i][0]==1{
           // print("safe spot detected")
            }
        
    }
   /*+
     if !stalematerunning{
         stalematerunning=true
         if checkForMoves(color: color, board: board) {
             checkInd=2
         }
         stalematerunning=false
          boardColorsCurrent=boardColorsOG
     }
     */
    
    
    
     
     
    print("returned")
    
    
return checkInd
    
}
func checkForMoves(color:String, board:[[String]])->Bool{
    for i in 0...7{
               var keep=true
               for j in 0...7{
                   print(i)
                   print(j)
                   if String(board[i][j].first!)==color{
                    checkBlocklines(i: i, j: j, board: board)
                       for l in 0...7{
                           for k in 0...7{
                               if boardColorsCurrent[l][k]>1{
                                   keep=false
                                   break
                               }
                               if !keep{break}
                           }
                       }
                   }
               if i == 7 && j == 7{
                     return true
                   }
               }
               if !keep{
                   break
               }
           }
    return false
}
func isCheckMate(board:[[String]])->Bool{
    var dummyBoard=board

    var c="W"
    if moveCount[0]==1{
        c="B"
    }
    for i in 0...7{
        for j in 0...7{
        if String(board[i][j].first!)==c{
            let ogPL=[i,j]
        
                    let info=willCauseCheck(loc:[i,j])
                    if info.count==2{
                        displayLines(loc:[i,j], oreintation:String(info[1]))
                    }else{
                        displayLines(loc:[i,j], oreintation:"a")
                    }
                    for l in 0...7{
                        for m in 0...7{
                            if boardColorsCurrent[l][m]>1{
                                dummyBoard[l][m]=dummyBoard[ogPL[0]][ogPL[1]]
                                dummyBoard[ogPL[0]][ogPL[1]]="e"
                                if isInCheck(board: board) == 0{
                                    return false
                                }else{
                                    

                                }
                            }
                        }
                    }
                    boardColorsCurrent=boardColorsOG
                    
    }
    
    }
    
}
    return true
}
func checkBlocklines(i:Int, j:Int,board:[[String]]){
 var holder = board
    var q=0
    var color="B"
    if moveCount[0]==0{
                color="W"
        }
            if String(board[i][j].first!)==color{
                                displayLines(loc:[i,j], oreintation:"a")
                print(boardColorsCurrent)
            for l in 0...7{
                                for m in 0...7{
                                    q+=1
                                    print(q)
                                    if boardColorsCurrent[l][m]>1{
                                        holder[l][m]=holder[i][j]
                                        holder[i][j]="e"
                                        var check = isInCheck(board: holder)
                                        print(check)
                                        if check != 0{
                                            boardColorsCurrent[l][m]=boardColorsOG[l][m]

                                        }
                                         holder[i][j]=holder[l][m]
                                         holder[l][m]="e"
                                    }
                                     
                                }
        }
                
            }
    
    
 
    
}
