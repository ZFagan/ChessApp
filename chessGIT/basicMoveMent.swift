//
//  basicMoveMent.swift
//  chessGIT
//
//  Created by ZemoF on 11/30/19.
//  Copyright © 2019 Zemo Fagan. All rights reserved.
//

 import Foundation


 func displayLines(loc:[Int], oreintation:String){
     let number = boardPeiceCurrent[loc[0]][loc[1]].last
 
if boardPeiceCurrent[loc[0]][loc[1]].contains("P"){
         if oreintation=="v"{
             linesPawn(location:loc, mod:"v")
         }else if oreintation=="l"{
             linesPawn(location:loc, mod:"l")
         }else if oreintation=="r"{
             linesPawn(location:loc, mod:"r")
        
     }else if oreintation=="a"{

linesPawn(location:loc, mod:"a")

        
     }else{
         print("pawn can't move")
     }

     }else if boardPeiceCurrent[loc[0]][loc[1]].contains("R"){
             if oreintation=="v"{

vLines(local:loc)

         }else if oreintation=="h"{

hLines(location:loc)

        
     }else if oreintation=="a"{

hLines(location:loc)
vLines(local:loc)
        
     }else{
         print("rook can't move")
     }
     } else if boardPeiceCurrent[loc[0]][loc[1]].contains("B"+String(number!)){
             if oreintation=="r"{
             rLines(location:loc)
         }else if oreintation=="l"{
             lLines(location:loc)
        
     }else if oreintation=="a"{
             lLines(location:loc)
        rLines(location:loc)
     }else{
         print("bishop can't move")
     }
     }else if boardPeiceCurrent[loc[0]][loc[1]].contains("Q"){
             if oreintation=="r"{
             rLines(location:loc)
         }else if oreintation=="l"{
             lLines(location:loc)
        
     }else if oreintation=="h"{
             hLines(location:loc)
        
     } else if oreintation=="v"{
             vLines(local:loc)
        
     }else if oreintation=="a"{
             hLines(location:loc)
        vLines(local:loc)
        rLines(location:loc)
        
        lLines(location:loc)
        
     }
     }else if boardPeiceCurrent[loc[0]][loc[1]].contains("H"){
             if oreintation=="a"{
             linesHorse(location:loc)
         }else{
             print("knight cant move")
         }
     }else if boardPeiceCurrent[loc[0]][loc[1]].contains("K"){
         if oreintation=="a"{
             linesKing(location: loc)
         }else{
             print("king cant move")
         }
     }
     
 }

func hLines(location:[Int]){
    var enemy="B"
    
    if String(boardPeiceCurrent[location[0]][location[1]].first!)=="B"{
        enemy="W"
    }

    if location[1]>0{
             for i in 0...location[1]{
                 let j=location[1]-i
             
                 if boardPeiceCurrent[location[0]][j]=="e"{
                     boardColorsCurrent[location[0]][j]=2
                 }else if String(boardPeiceCurrent[location[0]][j].first!)==enemy{
                     boardColorsCurrent[location[0]][j]=3
                     break
                 
             }else if  j != location[1]{break}
         }
         }
         if location[1]<7{
             for w in location[1]...7{
                 let e = w
             
                 if boardPeiceCurrent[location[0]][e]=="e"{
                     boardColorsCurrent[location[0]][e]=2
                 }else if String(boardPeiceCurrent[location[0]][e].first!)==enemy{
                     boardColorsCurrent[location[0]][e]=3
                     break
                 
             }else if e != location[1]{break}
         
             }
         }
}

func vLines(local:[Int]){
    var enemy = "B"
    if String(boardPeiceCurrent[local[0]][local[1]].first!)=="B"{
        enemy = "W"
    }

    if local[0]>0{
             for i in 0...local[0]{
                 let j=local[0]-i
             
                 if boardPeiceCurrent[j][local[1]]=="e"{
                     boardColorsCurrent[j][local[1]]=2
                 
                    
                 }else if String(boardPeiceCurrent[j][local[1]].first!)==enemy{
                     boardColorsCurrent[j][local[1]]=3
                     break
                 
             }else if j != local[0]{break}
         }
         }
         if local[0]<7{
             for w in local[0]...7{
                 let e = w
             
                 if boardPeiceCurrent[e][local[1]]=="e"{
                     boardColorsCurrent[e][local[1]]=2
                 }else if String(boardPeiceCurrent[e][local[1]].first!)==enemy{
                     boardColorsCurrent[e][local[1]]=3
                     break
                 
             }else if e != local[0]{break}
         
             }
         }
}

func rLines(location:[Int]){
    
    var enemy="B"
    if String(boardPeiceCurrent[location[0]][location[1]].first!)==enemy{

enemy="W"

    }

    if location[0]<7{
             for i in location[0]...7{
                     let j=i
                     let k=(location[1]-i)+location[0]
                     if k<0{
                         break
                     }
                     if boardPeiceCurrent[j][k]=="e"{
                     boardColorsCurrent[j][k]=2
                 }else if String(boardPeiceCurrent[j][k].first!)==enemy{
                     boardColorsCurrent[j][k]=3
                     break
                 
             }else if j != location[0]{break}
     
             }
             }
             if location[0]>0{
                 for i in 0...location[0]{
             let j = location[0]-i
             let k=location[1]+i
             if k>7{break}

 if boardPeiceCurrent[j][k]=="e"{
                     boardColorsCurrent[j][k]=2
                 }else if String(boardPeiceCurrent[j][k].first!)==enemy{
                     boardColorsCurrent[j][k]=3
                     break
                 
             }else if j != location[0]{break}
     

         }
             }
            
}

func lLines(location:[Int]){
    var enemy="B"
    if String(boardPeiceCurrent[location[0]][location[1]].first!)==enemy{

enemy="W"

    }

    if location[0]<7{
                 for i in location[0]...7{
                     let j=i
                     let k=i+location[1]-location[0]
                     if k>7{
                         break
                     }
                     if boardPeiceCurrent[j][k]=="e"{
                     boardColorsCurrent[j][k]=2
                 }else if String(boardPeiceCurrent[j][k].first!)==enemy{
                     boardColorsCurrent[j][k]=3
                     break
                 
             }else if j != location[0]{break}
     
             }
             }
             
             if location[0]>0{
         for i in 0...location[0]{
             let j = location[0]-i
             let k=location[1]-i
             if j<0 || k<0{
                                break
                            }

 if boardPeiceCurrent[j][k]=="e"{
                     boardColorsCurrent[j][k]=2
                 }else if String(boardPeiceCurrent[j][k].first!)==enemy{
                     boardColorsCurrent[j][k]=3
                     break
                 
             }else if j != location[0]{break}
     }
     }
}

 func linesPawn(location:[Int], mod:String){
     if mod=="a"{
        print("pawn mod a")
    linesPawn(location:location, mod:"l")
        print("pawn mod a part l")
    linesPawn(location: location, mod:"r")
        print("pawn mod a part r")
    linesPawn(location: location, mod:"v")
        print("pawn mod a part v")
    }
 if mod=="v"{
     if String(boardPeiceCurrent[location[0]][location[1]].first!)=="W"{

if boardPeiceCurrent[location[0]+1][location[1]]=="e"{
             boardColorsCurrent [location[0]+1][location[1]]=2
             if location[0]==1 && boardPeiceCurrent[location[0]+2][location[1]]=="e"{

 boardColorsCurrent [location[0]+2][location[1]]=2

             }
     
         }
 
     
 }else{
             if boardPeiceCurrent[location[0]-1][location[1]]=="e"{
                print(boardColorsCurrent [location[0]-1][location[1]])
             boardColorsCurrent [location[0]-1][location[1]]=2
                        print(boardColorsCurrent [location[0]-1][location[1]])
             if location[0]==6 && boardPeiceCurrent[location[0]-2][location[1]]=="e"{

 boardColorsCurrent [location[0]-2][location[1]]=2

             }
         }

     }
    }
 
 if mod=="l"{
     if String(boardPeiceCurrent[location[0]][location[1]].first!)=="W"{

if location[1]<7{
    let a=location[0]+1
    let b=location[1]+1
            print("location reconized")
    if String(boardPeiceCurrent[a][b].first!)=="B"{
                           boardColorsCurrent [location[0]+1][location[1]+1]=3
                       }
        }

}else{
    

if location[1] != 0{
    let a=location[0]-1
       let b=location[1]-1
    if String(boardPeiceCurrent[a][b].first!)=="W"{
                                                   boardColorsCurrent [location[0]-1][location[1]-1]=3
                                                   }
}

    
}
 }
 
 if mod=="r"{
    if String(boardPeiceCurrent[location[0]][location[1]].first!)=="W"{

if location[1]>0{
    let a=location[0]+1
    let b=location[1]-1
    if String(boardPeiceCurrent[a][b].first!)=="B"{
                boardColorsCurrent [a][b]=3
            }
        }
       

}else{
    if location[1] != 7{
        let a=location[0]-1
        let b=location[1]+1
               if String(boardPeiceCurrent[a][b].first!)=="W"{
                                                   boardColorsCurrent [location[0]-1][location[1]+1]=3
                                                   }
            }
}
 }
    
     }

 func linesHorse(location:[Int]){
    
    let a = location[1]-1
    let b = location[1]+1
    let c = location[0]+2
    let d = location[0]-2
     if String(boardPeiceCurrent[location[0]][location[1]].first!)=="W"{
         if location[0]+2<8{
             if (location[1]-1) > -1{
                 if String(boardPeiceCurrent[c][a].first!)=="B"{
                     boardColorsCurrent [c][a]=3
                 }else if String(boardPeiceCurrent[c][a].first!)=="e"{
                     boardColorsCurrent [c][a]=2
                 }
             }
             if location[1]+1<8{
                 if String(boardPeiceCurrent[c][b].first!)=="B"{
                     boardColorsCurrent [location[0]+2][b]=3
                 }else if String(boardPeiceCurrent[c][b].first!)=="e"{
                     boardColorsCurrent [c][b]=2
                 }
             }
         }
             if (location[0]-2) > -1{
             if (location[1]-1) > -1{
                 if String(boardPeiceCurrent[d][a].first!)=="B"{
                     boardColorsCurrent [location[0]-2][a]=3
                 }else if String(boardPeiceCurrent[d][a].first!)=="e"{
                     boardColorsCurrent [location[0]-2][a]=2
                 }
             }
             if location[1]+1<8{
                 if String(boardPeiceCurrent[d][b].first!)=="B"{
                     boardColorsCurrent [location[0]-2][location[1]+1]=3
                 }else if String(boardPeiceCurrent[d][b].first!)=="e"{
                     boardColorsCurrent [location[0]-2][location[1]+1]=2
                 }
             }
         }
         if location[1]+2<8{
             if (location[0]-1) > -1{
                 if String(boardPeiceCurrent[location[0]-1][location[1]+2].first!)=="B"{
                     boardColorsCurrent [location[0]-1][location[1]+2]=3
                 }else if String(boardPeiceCurrent[location[0]-1][location[1]+2].first!)=="e"{
                     boardColorsCurrent [location[0]-1][location[1]+2]=2
                 }
             }
             if location[0]+1<8{
                 if String(boardPeiceCurrent[location[0]+1][location[1]+2].first!)=="B"{
                     boardColorsCurrent [location[0]+1][location[1]+2]=3
                 }else if String(boardPeiceCurrent[location[0]+1][location[1]+2].first!)=="e"{
                     boardColorsCurrent [location[0]+1][location[1]+2]=2
                 }
             }
         }
             if (location[1]-2) > -1{
             if (location[0]-1) > -1{
                 if String(boardPeiceCurrent[location[0]-1][location[1]-2].first!)=="B"{
                     boardColorsCurrent [location[0]-1][location[1]-2]=3
                 }else if String(boardPeiceCurrent[location[0]-1][location[1]-2].first!)=="e"{
                     boardColorsCurrent [location[0]-1][location[1]-2]=2
                 }
             }
             if location[0]+1<8{
                 if String(boardPeiceCurrent[location[0]+1][location[1]-2].first!)=="B"{
                     boardColorsCurrent [location[0]+1][location[1]-2]=3
                 }else if String(boardPeiceCurrent[location[0]+1][location[1]-2].first!)=="e"{
                     boardColorsCurrent [location[0]+1][location[1]-2]=2
                 }
             }
         }

     }else{
         
         if location[0]+2<8{
             if location[1]-1 > -1{
                 if String(boardPeiceCurrent[c][a].first!)=="W"{
                     boardColorsCurrent [location[0]+2][location[1]-1]=3
                 }else if String(boardPeiceCurrent[c][a].first!)=="e"{
                     boardColorsCurrent [location[0]+2][location[1]-1]=2
                 }
             }
             if location[1]+1<8{
                 if String(boardPeiceCurrent[c][b].first!)=="W"{
                     boardColorsCurrent [location[0]+2][location[1]+1]=3
                 }else if String(boardPeiceCurrent[c][b].first!)=="e"{
                     boardColorsCurrent [location[0]+2][location[1]+1]=2
                 }
             }
         }
             if location[0]-2 > -1{
             if location[1]-1 > -1{
                 if String(boardPeiceCurrent[d][a].first!)=="W"{
                     boardColorsCurrent [location[0]-2][location[1]-1]=3
                 }else if String(boardPeiceCurrent[d][a].first!)=="e"{
                     boardColorsCurrent [location[0]-2][location[1]-1]=2
                 }
             }
             if location[1]+1<8{
                 if String(boardPeiceCurrent[d][b].first!)=="W"{
                     boardColorsCurrent [location[0]-2][location[1]+1]=3
                 }else if String(boardPeiceCurrent[d][b].first!)=="e"{
                     boardColorsCurrent [location[0]-2][location[1]+1]=2
                 }
             }
         }
         if location[1]+2<8{
             if location[0]-1 > -1{
                 if String(boardPeiceCurrent[location[0]-1][location[1]+2].first!)=="W"{
                     boardColorsCurrent [location[0]-1][location[1]+2]=3
                 }else if String(boardPeiceCurrent[location[0]-1][location[1]+2].first!)=="e"{
                     boardColorsCurrent [location[0]-1][location[1]+2]=2
                 }
             }
             if location[0]+1<8{
                 if String(boardPeiceCurrent[location[0]+1][location[1]+2].first!)=="W"{
                     boardColorsCurrent [location[0]+1][location[1]+2]=3
                 }else if String(boardPeiceCurrent[location[0]+1][location[1]+2].first!)=="e"{
                     boardColorsCurrent [location[0]+1][location[1]+2]=2
                 }
             }
         }
             if location[1]-2 > -1{
             if location[0]-1 > -1{
                 if String(boardPeiceCurrent[location[0]-1][location[1]-2].first!)=="W"{
                     boardColorsCurrent [location[0]-1][location[1]-2]=3
                 }else if String(boardPeiceCurrent[location[0]-1][location[1]-2].first!)=="e"{
                     boardColorsCurrent [location[0]-1][location[1]-2]=2
                 }
             }
             if location[0]+1<8{
                 if String(boardPeiceCurrent[location[0]+1][location[1]-2].first!)=="W"{
                     boardColorsCurrent [location[0]+1][location[1]-2]=3
                 }else if String(boardPeiceCurrent[location[0]+1][location[1]-2].first!)=="e"{
                     boardColorsCurrent [location[0]+1][location[1]-2]=2
                 }
             }
         }

     }
 }



func linesKing(location:[Int]){
    var check:[[Int]]=[[]]
print("lines king start")
       
       if location[0] != 0{
        check=safeSpace(local:[location[0]-1,location[1]], color:String(boardPeiceCurrent[location[0]][location[1]].first!), board: boardPeiceCurrent)
      
           boardColorsCurrent[location[0]-1][location[1]]=consolidate(safe: check,cor:[location[0]-1,location[1]])
       
           if location[1] != 0{
            check=safeSpace(local:[location[0]-1,location[1]-1], color:String(boardPeiceCurrent[location[0]][location[1]].first!), board: boardPeiceCurrent)
      
           boardColorsCurrent[location[0]-1][location[1]-1]=consolidate(safe: check,cor:[location[0]-1,location[1]-1])
           }
           if location[1] != 7{
            check=safeSpace(local:[location[0]-1,location[1]+1], color:String(boardPeiceCurrent[location[0]][location[1]].first!), board: boardPeiceCurrent)
      
           boardColorsCurrent[location[0]-1][location[1]+1]=consolidate(safe: check,cor:[location[0]-1,location[1]+1])
           }
           
       }
       if location[0] != 7{
        check=safeSpace(local:[location[0]+1,location[1]], color:String(boardPeiceCurrent[location[0]][location[1]].first!), board: boardPeiceCurrent)
      
           boardColorsCurrent[location[0]+1][location[1]]=consolidate(safe: check,cor:[location[0]+1,location[1]])
       
           if location[1] != 0{
            check=safeSpace(local:[location[0]+1,location[1]-1], color:String(boardPeiceCurrent[location[0]][location[1]].first!), board: boardPeiceCurrent)
      
           boardColorsCurrent[location[0]+1][location[1]-1]=consolidate(safe: check,cor:[location[0]+1,location[1]-1])
           }
           if location[1] != 7{
            check=safeSpace(local:[location[0]+1,location[1]+1], color:String(boardPeiceCurrent[location[0]][location[1]].first!), board: boardPeiceCurrent)
      
           boardColorsCurrent[location[0]+1][location[1]+1]=consolidate(safe: check,cor:[location[0]+1,location[1]+1])
           }
       }
      

   if location[1] != 0{
    check=safeSpace(local:[location[0],location[1]-1], color:String(boardPeiceCurrent[location[0]][location[1]].first!), board: boardPeiceCurrent)
      
           boardColorsCurrent[location[0]][location[1]-1]=consolidate(safe: check,cor:[location[0],location[1]-1])
           }
           if location[1] != 7{
            check=safeSpace(local:[location[0],location[1]+1], color:String(boardPeiceCurrent[location[0]][location[1]].first!), board: boardPeiceCurrent)
      
           boardColorsCurrent[location[0]][location[1]+1]=consolidate(safe: check,cor:[location[0],location[1]+1])
           }

               
        
}
        
        

