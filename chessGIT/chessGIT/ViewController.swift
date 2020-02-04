//
//  ViewController.swift
//  chessGIT
//
//  Created by ZemoF on 11/29/19.
//  Copyright © 2019 Zemo Fagan. All rights reserved.
//

import UIKit
 var boardColorsCurrent :[[Int]]=[[0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0]]
var boardPeiceCurrent :[[String]]=[["WR1","WH1","WB1","WK1","WQ1","WB2","WH2","WR2"],["WP1","WP2","WP3","WP4", "WP5","WP6","WP7","WP8"],["e", "e", "e", "e", "e", "e", "e", "e"], ["e", "e", "e", "e", "e", "e", "e", "e"], ["e", "e", "e", "e", "e", "e", "e", "e"], ["e", "e", "e", "e", "e", "e", "e", "e"], ["BP1","BP2","BP3","BP4", "BP5","BP6","BP7","BP8"],["BR1","BH1","BB1","BK1","BQ1","BB2","BH2","BR2"]]
let boardColorsOG:[[Int]]=[[0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0]]
    var moveCount:[Int]=[0,0]
class ViewController: UIViewController {
   
    @IBOutlet var btn10: UIButton!
    @IBOutlet var btn11:UIButton!
    @IBOutlet var btn12:UIButton!
    @IBOutlet var btn13:UIButton!
    @IBOutlet var btn14:UIButton!
    @IBOutlet var btn15:UIButton!
    @IBOutlet var btn16:UIButton!
    @IBOutlet var btn17:UIButton!
    @IBOutlet var btn20: UIButton!
    @IBOutlet var btn21:UIButton!
    @IBOutlet var btn22:UIButton!
    @IBOutlet var btn23:UIButton!
    @IBOutlet var btn24:UIButton!
    @IBOutlet var btn25:UIButton!
    @IBOutlet var btn26:UIButton!
    @IBOutlet var btn27:UIButton!
    @IBOutlet var btn30: UIButton!
    @IBOutlet var btn31:UIButton!
    @IBOutlet var btn32:UIButton!
    @IBOutlet var btn33:UIButton!
    @IBOutlet var btn34:UIButton!
    @IBOutlet var btn35:UIButton!
    @IBOutlet var btn36:UIButton!
    @IBOutlet var btn37:UIButton!
    @IBOutlet var btn40: UIButton!
    @IBOutlet var btn41:UIButton!
    @IBOutlet var btn42:UIButton!
    @IBOutlet var btn43:UIButton!
    @IBOutlet var btn44:UIButton!
    @IBOutlet var btn45:UIButton!
    @IBOutlet var btn46:UIButton!
    @IBOutlet var btn47:UIButton!
    @IBOutlet var btn50: UIButton!
    @IBOutlet var btn51:UIButton!
    @IBOutlet var btn52:UIButton!
    @IBOutlet var btn53:UIButton!
    @IBOutlet var btn54:UIButton!
    @IBOutlet var btn55:UIButton!
    @IBOutlet var btn56:UIButton!
    @IBOutlet var btn57:UIButton!
    @IBOutlet var btn60:UIButton!
    @IBOutlet var btn61:UIButton!
    @IBOutlet var btn62:UIButton!
    @IBOutlet var btn63:UIButton!
    @IBOutlet var btn64:UIButton!
    @IBOutlet var btn65:UIButton!
    @IBOutlet var btn66:UIButton!
    @IBOutlet var btn67:UIButton!
    @IBOutlet var btn00:UIButton!
    @IBOutlet var btn01:UIButton!
    @IBOutlet var btn02:UIButton!
    @IBOutlet var btn03:UIButton!
    @IBOutlet var btn04:UIButton!
    @IBOutlet var btn05:UIButton!
    @IBOutlet var btn06:UIButton!
    @IBOutlet var btn07:UIButton!
    @IBOutlet var btn70:UIButton!
    @IBOutlet var btn71:UIButton!
    @IBOutlet var btn72:UIButton!
    @IBOutlet var btn73:UIButton!
    @IBOutlet var btn74:UIButton!
    @IBOutlet var btn75:UIButton!
    @IBOutlet var btn76:UIButton!
    @IBOutlet var btn77:UIButton!
    
    let boardColorsOG:[[Int]]=[[0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0], [0,1,0,1,0,1,0,1],[1,0,1,0,1,0,1,0]]
        //1 is black, 0 is white, 2 is yellow, 3is red
    let boardStart:[[String]]=[["WR1","WH1","WB1","WK1","WQ1","WB2","WH2","WR2"],["WP1","WP2","WP3","WP4", "WP5","WP6","WP7","WP8"],["e", "e", "e", "e", "e", "e", "e", "e"], ["e", "e", "e", "e", "e", "e", "e", "e"], ["e", "e", "e", "e", "e", "e", "e", "e"], ["e", "e", "e", "e", "e", "e", "e", "e"], ["BP1","BP2","BP3","BP4", "BP5","BP6","BP7","BP8"],["BR1","BH1","BB1","BK1","BQ1","BB2","BH2","BR2"]]

   
    var lastCord:[Int]=[0,0]
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBoard()
        print(boardColorsOG)
        boardPeiceCurrent=boardStart
        // Do any additional setup after loading the view.
    }
    func setUpBoard(){
        updateSpace(place: btn00, peice: boardStart[0][0], color: boardColorsOG[0][0])
        
         updateSpace(place: btn01, peice: boardStart[0][1], color: boardColorsOG[0][1])
        updateSpace(place: btn02, peice: boardStart[0][2], color: boardColorsOG[0][2])
        updateSpace(place: btn03, peice: boardStart[0][3], color: boardColorsOG[0][3])
        updateSpace(place: btn04, peice: boardStart[0][4], color: boardColorsOG[0][4])
         updateSpace(place: btn05, peice: boardStart[0][5], color: boardColorsOG[0][5])
        updateSpace(place: btn06, peice: boardStart[0][6], color: boardColorsOG[0][6])
        updateSpace(place: btn07, peice: boardStart[0][7], color: boardColorsOG[0][7])
        updateSpace(place: btn10, peice: boardStart[1][0], color: boardColorsOG[1][0])
                updateSpace(place: btn11, peice: boardStart[1][1], color: boardColorsOG[1][1])
               updateSpace(place: btn12, peice: boardStart[1][2], color: boardColorsOG[1][2])
               updateSpace(place: btn13, peice: boardStart[1][3], color: boardColorsOG[1][3])
               updateSpace(place: btn14, peice: boardStart[1][4], color: boardColorsOG[1][4])
                updateSpace(place: btn15, peice: boardStart[1][5], color: boardColorsOG[1][5])
               updateSpace(place: btn16, peice: boardStart[1][6], color: boardColorsOG[1][6])
               updateSpace(place: btn17, peice: boardStart[1][7], color: boardColorsOG[1][7])
        updateSpace(place: btn20, peice: boardStart[2][0], color: boardColorsOG[2][0])
             updateSpace(place: btn21, peice: boardStart[2][1], color: boardColorsOG[2][1])
            updateSpace(place: btn22, peice: boardStart[2][2], color: boardColorsOG[2][2])
            updateSpace(place: btn23, peice: boardStart[2][3], color: boardColorsOG[2][3])
            updateSpace(place: btn24, peice: boardStart[2][4], color: boardColorsOG[2][4])
             updateSpace(place: btn25, peice: boardStart[2][5], color: boardColorsOG[2][5])
            updateSpace(place: btn26, peice: boardStart[2][6], color: boardColorsOG[2][6])
            updateSpace(place: btn27, peice: boardStart[2][7], color: boardColorsOG[2][7])
            updateSpace(place: btn30, peice: boardStart[3][0], color: boardColorsOG[3][0])
                    updateSpace(place: btn31, peice: boardStart[3][1], color: boardColorsOG[3][1])
                   updateSpace(place: btn32, peice: boardStart[3][2], color: boardColorsOG[3][2])
                   updateSpace(place: btn33, peice: boardStart[3][3], color: boardColorsOG[3][3])
                   updateSpace(place: btn34, peice: boardStart[3][4], color: boardColorsOG[3][4])
                    updateSpace(place: btn35, peice: boardStart[3][5], color: boardColorsOG[3][5])
                   updateSpace(place: btn36, peice: boardStart[3][6], color: boardColorsOG[3][6])
                   updateSpace(place: btn37, peice: boardStart[3][7], color: boardColorsOG[3][7])
        updateSpace(place: btn40, peice: boardStart[4][0], color: boardColorsOG[4][0])
         updateSpace(place: btn41, peice: boardStart[4][1], color: boardColorsOG[4][1])
        updateSpace(place: btn42, peice: boardStart[4][2], color: boardColorsOG[4][2])
        updateSpace(place: btn43, peice: boardStart[4][3], color: boardColorsOG[4][3])
        updateSpace(place: btn44, peice: boardStart[4][4], color: boardColorsOG[4][4])
         updateSpace(place: btn45, peice: boardStart[4][5], color: boardColorsOG[4][5])
        updateSpace(place: btn46, peice: boardStart[4][6], color: boardColorsOG[4][6])
        updateSpace(place: btn47, peice: boardStart[4][7], color: boardColorsOG[4][7])
        updateSpace(place: btn50, peice: boardStart[5][0], color: boardColorsOG[5][0])
                updateSpace(place: btn51, peice: boardStart[5][1], color: boardColorsOG[5][1])
               updateSpace(place: btn52, peice: boardStart[5][2], color: boardColorsOG[5][2])
               updateSpace(place: btn53, peice: boardStart[5][3], color: boardColorsOG[5][3])
               updateSpace(place: btn54, peice: boardStart[5][4], color: boardColorsOG[5][4])
                updateSpace(place: btn55, peice: boardStart[5][5], color: boardColorsOG[5][5])
               updateSpace(place: btn56, peice: boardStart[5][6], color: boardColorsOG[5][6])
               updateSpace(place: btn57, peice: boardStart[5][7], color: boardColorsOG[5][7])
        updateSpace(place: btn60, peice: boardStart[6][0], color: boardColorsOG[6][0])
             updateSpace(place: btn61, peice: boardStart[6][1], color: boardColorsOG[6][1])
            updateSpace(place: btn62, peice: boardStart[6][2], color: boardColorsOG[6][2])
            updateSpace(place: btn63, peice: boardStart[6][3], color: boardColorsOG[6][3])
            updateSpace(place: btn64, peice: boardStart[6][4], color: boardColorsOG[6][4])
             updateSpace(place: btn65, peice: boardStart[6][5], color: boardColorsOG[6][5])
            updateSpace(place: btn66, peice: boardStart[6][6], color: boardColorsOG[6][6])
            updateSpace(place: btn67, peice: boardStart[6][7], color: boardColorsOG[6][7])
            updateSpace(place: btn70, peice: boardStart[7][0], color: boardColorsOG[7][0])
                    updateSpace(place: btn71, peice: boardStart[7][1], color: boardColorsOG[7][1])
                   updateSpace(place: btn72, peice: boardStart[7][2], color: boardColorsOG[7][2])
                   updateSpace(place: btn73, peice: boardStart[7][3], color: boardColorsOG[7][3])
                   updateSpace(place: btn74, peice: boardStart[7][4], color: boardColorsOG[7][4])
                    updateSpace(place: btn75, peice: boardStart[7][5], color: boardColorsOG[7][5])
                   updateSpace(place: btn76, peice: boardStart[7][6], color: boardColorsOG[7][6])
                   updateSpace(place: btn77, peice: boardStart[7][7], color: boardColorsOG[7][7])
    }
    func boardUpdate(){
        updateSpace(place: btn00, peice: boardPeiceCurrent[0][0], color: boardColorsCurrent[0][0])
         updateSpace(place: btn01, peice: boardPeiceCurrent[0][1], color: boardColorsCurrent[0][1])
        updateSpace(place: btn02, peice: boardPeiceCurrent[0][2], color: boardColorsCurrent[0][2])
        updateSpace(place: btn03, peice: boardPeiceCurrent[0][3], color: boardColorsCurrent[0][3])
        updateSpace(place: btn04, peice: boardPeiceCurrent[0][4], color: boardColorsCurrent[0][4])
         updateSpace(place: btn05, peice: boardPeiceCurrent[0][5], color: boardColorsCurrent[0][5])
        updateSpace(place: btn06, peice: boardPeiceCurrent[0][6], color: boardColorsCurrent[0][6])
        updateSpace(place: btn07, peice: boardPeiceCurrent[0][7], color: boardColorsCurrent[0][7])
        updateSpace(place: btn10, peice: boardPeiceCurrent[1][0], color: boardColorsCurrent[1][0])
                updateSpace(place: btn11, peice: boardPeiceCurrent[1][1], color: boardColorsCurrent[1][1])
               updateSpace(place: btn12, peice: boardPeiceCurrent[1][2], color: boardColorsCurrent[1][2])
               updateSpace(place: btn13, peice: boardPeiceCurrent[1][3], color: boardColorsCurrent[1][3])
               updateSpace(place: btn14, peice: boardPeiceCurrent[1][4], color: boardColorsCurrent[1][4])
                updateSpace(place: btn15, peice: boardPeiceCurrent[1][5], color: boardColorsCurrent[1][5])
               updateSpace(place: btn16, peice: boardPeiceCurrent[1][6], color: boardColorsCurrent[1][6])
               updateSpace(place: btn17, peice: boardPeiceCurrent[1][7], color: boardColorsCurrent[1][7])
        updateSpace(place: btn20, peice: boardPeiceCurrent[2][0], color: boardColorsCurrent[2][0])
             updateSpace(place: btn21, peice: boardPeiceCurrent[2][1], color: boardColorsCurrent[2][1])
            updateSpace(place: btn22, peice: boardPeiceCurrent[2][2], color: boardColorsCurrent[2][2])
            updateSpace(place: btn23, peice: boardPeiceCurrent[2][3], color: boardColorsCurrent[2][3])
            updateSpace(place: btn24, peice: boardPeiceCurrent[2][4], color: boardColorsCurrent[2][4])
             updateSpace(place: btn25, peice: boardPeiceCurrent[2][5], color: boardColorsCurrent[2][5])
            updateSpace(place: btn26, peice: boardPeiceCurrent[2][6], color: boardColorsCurrent[2][6])
            updateSpace(place: btn27, peice: boardPeiceCurrent[2][7], color: boardColorsCurrent[2][7])
            updateSpace(place: btn30, peice: boardPeiceCurrent[3][0], color: boardColorsCurrent[3][0])
                    updateSpace(place: btn31, peice: boardPeiceCurrent[3][1], color: boardColorsCurrent[3][1])
                   updateSpace(place: btn32, peice: boardPeiceCurrent[3][2], color: boardColorsCurrent[3][2])
                   updateSpace(place: btn33, peice: boardPeiceCurrent[3][3], color: boardColorsCurrent[3][3])
                   updateSpace(place: btn34, peice: boardPeiceCurrent[3][4], color: boardColorsCurrent[3][4])
                    updateSpace(place: btn35, peice: boardPeiceCurrent[3][5], color: boardColorsCurrent[3][5])
                   updateSpace(place: btn36, peice: boardPeiceCurrent[3][6], color: boardColorsCurrent[3][6])
                   updateSpace(place: btn37, peice: boardPeiceCurrent[3][7], color: boardColorsCurrent[3][7])
        updateSpace(place: btn40, peice: boardPeiceCurrent[4][0], color: boardColorsCurrent[4][0])
         updateSpace(place: btn41, peice: boardPeiceCurrent[4][1], color: boardColorsCurrent[4][1])
        updateSpace(place: btn42, peice: boardPeiceCurrent[4][2], color: boardColorsCurrent[4][2])
        updateSpace(place: btn43, peice: boardPeiceCurrent[4][3], color: boardColorsCurrent[4][3])
        updateSpace(place: btn44, peice: boardPeiceCurrent[4][4], color: boardColorsCurrent[4][4])
         updateSpace(place: btn45, peice: boardPeiceCurrent[4][5], color: boardColorsCurrent[4][5])
        updateSpace(place: btn46, peice: boardPeiceCurrent[4][6], color: boardColorsCurrent[4][6])
        updateSpace(place: btn47, peice: boardPeiceCurrent[4][7], color: boardColorsCurrent[4][7])
        updateSpace(place: btn50, peice: boardPeiceCurrent[5][0], color: boardColorsCurrent[5][0])
                updateSpace(place: btn51, peice: boardPeiceCurrent[5][1], color: boardColorsCurrent[5][1])
               updateSpace(place: btn52, peice: boardPeiceCurrent[5][2], color: boardColorsCurrent[5][2])
               updateSpace(place: btn53, peice: boardPeiceCurrent[5][3], color: boardColorsCurrent[5][3])
               updateSpace(place: btn54, peice: boardPeiceCurrent[5][4], color: boardColorsCurrent[5][4])
                updateSpace(place: btn55, peice: boardPeiceCurrent[5][5], color: boardColorsCurrent[5][5])
               updateSpace(place: btn56, peice: boardPeiceCurrent[5][6], color: boardColorsCurrent[5][6])
               updateSpace(place: btn57, peice: boardPeiceCurrent[5][7], color: boardColorsCurrent[5][7])
        updateSpace(place: btn60, peice: boardPeiceCurrent[6][0], color: boardColorsCurrent[6][0])
             updateSpace(place: btn61, peice: boardPeiceCurrent[6][1], color: boardColorsCurrent[6][1])
            updateSpace(place: btn62, peice: boardPeiceCurrent[6][2], color: boardColorsCurrent[6][2])
            updateSpace(place: btn63, peice: boardPeiceCurrent[6][3], color: boardColorsCurrent[6][3])
            updateSpace(place: btn64, peice: boardPeiceCurrent[6][4], color: boardColorsCurrent[6][4])
             updateSpace(place: btn65, peice: boardPeiceCurrent[6][5], color: boardColorsCurrent[6][5])
            updateSpace(place: btn66, peice: boardPeiceCurrent[6][6], color: boardColorsCurrent[6][6])
            updateSpace(place: btn67, peice: boardPeiceCurrent[6][7], color: boardColorsCurrent[6][7])
            updateSpace(place: btn70, peice: boardPeiceCurrent[7][0], color: boardColorsCurrent[7][0])
                    updateSpace(place: btn71, peice: boardPeiceCurrent[7][1], color: boardColorsCurrent[7][1])
                   updateSpace(place: btn72, peice: boardPeiceCurrent[7][2], color: boardColorsCurrent[7][2])
                   updateSpace(place: btn73, peice: boardPeiceCurrent[7][3], color: boardColorsCurrent[7][3])
                   updateSpace(place: btn74, peice: boardPeiceCurrent[7][4], color: boardColorsCurrent[7][4])
                    updateSpace(place: btn75, peice: boardPeiceCurrent[7][5], color: boardColorsCurrent[7][5])
                   updateSpace(place: btn76, peice: boardPeiceCurrent[7][6], color: boardColorsCurrent[7][6])
                   updateSpace(place: btn77, peice: boardPeiceCurrent[7][7], color: boardColorsCurrent[7][7])
    }
    
    func updateSpace(place:UIButton,peice:String,color:Int){
        if peice.first=="B"{
            place.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        }else{
            place.setTitleColor(UIColor.red, for: UIControl.State.normal)
        }
        if peice=="e"{
          place.setTitle(" ", for: UIControl.State.normal)
        }else{
           place.setTitle(peice, for: UIControl.State.normal)
        }
        switch color {
        case 0:
            place.backgroundColor=UIColor.white
        case 1:
            place.backgroundColor=UIColor.black
        case 2:
            place.backgroundColor=UIColor.yellow
        case 3:
            place.backgroundColor=UIColor.magenta
        default:
            print("recolorfail")
                
            
        }
        
    }
    func intiateStandardMove(cord:[Int]){
        if moveCount[0]==0{
            //white move
            if boardPeiceCurrent[cord[0]][cord[1]].first=="W"{
                moveCount[1]=1
                displayLines(loc: cord, oreintation:"a")
            }else{
                print("Wrong Color")
            }
        }else{
            //black move
            if boardPeiceCurrent[cord[0]][cord[1]].first=="B"{
                           moveCount[1]=1
                           displayLines(loc: cord, oreintation:"a")
                       }else{
                           print("Wrong Color")
                       }
        }
        boardUpdate()
        print("standard move sucsess")
        
    }
    func restrictedMove(cord:[Int]){
        
        if moveCount[0]==0{
            let kl = findKing(color: "W")
            let diag=[kl[0]-cord[0],kl[1]-cord[1]]
                  //white move
                  if boardPeiceCurrent[cord[0]][cord[1]].first=="W"{
                      moveCount[1]=1
                      if kl[0]==cord[0]{
                        displayLines(loc: cord, oreintation:"h")
                    }else if kl[1]==cord[1]{
                        displayLines(loc: cord, oreintation:"v")
                    }else if diag[1]==diag[0]{
                        displayLines(loc: cord, oreintation:"l")
                    }else if diag[0].magnitude==diag[1].magnitude{
                        displayLines(loc: cord, oreintation:"r")
                    }else{
                        print("restricted move error")
                    }
                  }else{
                      print("Wrong Color")
                  }
              }else{
            let kl = findKing(color: "B")
            let diag=[kl[0]-cord[0],kl[1]-cord[1]]
                  //black move
                  if boardPeiceCurrent[cord[0]][cord[1]].first=="B"{
                                 moveCount[1]=1
                                 if kl[0]==cord[0]{
                                     displayLines(loc: cord, oreintation:"h")
                                 }else if kl[1]==cord[1]{
                                     displayLines(loc: cord, oreintation:"v")
                                 }else if diag[1]==diag[0]{
                                     displayLines(loc: cord, oreintation:"l")
                                 }else if diag[0].magnitude==diag[1].magnitude{
                                     displayLines(loc: cord, oreintation:"r")
                                 }else{
                                     print("restricted move error")
                                 }
                             }else{
                                 print("Wrong Color")
                             }
              }
              boardUpdate()
              print("restricted move sucsess")
    }
    
    func blockLines(cord:[Int]){
        if moveCount[0]==0{
            //white move
            if boardPeiceCurrent[cord[0]][cord[1]].first=="W"{
                 moveCount[1]=1
                checkBlocklines(i:cord[0],j:cord[1], board: boardPeiceCurrent)
            }else{
                print("wrong Color")
            }
              
        }else{
            //black move
            if boardPeiceCurrent[cord[0]][cord[1]].first=="B"{
                 moveCount[1]=1
                checkBlocklines(i:cord[0],j:cord[1], board: boardPeiceCurrent)
            }else{
                print("wrong Color")
            }
        }
        print(boardColorsCurrent)
        boardUpdate()
        print("block move sucsess")
    }
    
   func movementLogic(cCord:[Int]){
    lastCord=cCord
    let checkState=isInCheck(board: boardPeiceCurrent)
    print(checkState)
    if checkState==0{
        // no check
        var dummyBoard=boardPeiceCurrent
        dummyBoard[cCord[0]][cCord[1]]="e"
        let checkState2=isInCheck(board: dummyBoard)
        if checkState2==0{
            intiateStandardMove(cord: cCord)
        }else if checkState2==1{
            restrictedMove(cord: cCord)
        }
    }else if checkState==1{
        print("check Reconized by movement tracker")
        //check
      blockLines(cord: cCord)
    }else if checkState==2{
        //stalemate
        print("Stale Mate")
    }
    }
    func executeMove(cord:[Int]){
        boardPeiceCurrent[cord[0]][cord[1]]=boardPeiceCurrent[lastCord[0]][lastCord[1]]
        boardPeiceCurrent[lastCord[0]][lastCord[1]]="e"
        if moveCount[0]==0{
            moveCount=[1,0]
        }else{
            moveCount=[0,0]
        }
        boardColorsCurrent=boardColorsOG
        boardUpdate()
    }
    
func moveGoverner(cord:[Int]){
    if moveCount[1]==0{
        movementLogic(cCord: cord)
    }else if moveCount[1]==1 && boardColorsCurrent[cord[0]][cord[1]]<2{
        moveCount[1]=0
        boardColorsCurrent=boardColorsOG
        movementLogic(cCord: cord)
    }else if moveCount[1]==1 && boardColorsCurrent[cord[0]][cord[1]]>1{
        executeMove(cord:cord)
    }
    }


    @IBAction func btn00A(_ sender: Any) {
        let cord=[0,0]
        moveGoverner(cord: cord)
    }
    @IBAction func btn01A(_ sender: Any){
         let cord=[0,1]
        moveGoverner(cord: cord)
    }
    @IBAction func btn02A(_ sender: Any){
         let cord=[0,2]
        moveGoverner(cord: cord)
    }
    @IBAction func btn03A(_ sender:Any){
        let cord=[0,3]
        moveGoverner(cord: cord)
    }
    
    @IBAction func btn04A(_ sender: Any){
            let cord=[0,4]
        moveGoverner(cord: cord)
       }
    @IBAction func btn05A(_ sender: Any){
            let cord=[0,5]
        moveGoverner(cord: cord)
       }
    @IBAction func btn06A(_ sender: Any){
            let cord=[0,6]
        moveGoverner(cord: cord)
       }
    @IBAction func btn07A(_ sender: Any){
            let cord=[0,7]
        moveGoverner(cord: cord)
       }
    @IBAction func btn10A(_ sender: Any){
            let cord=[1,0]
        moveGoverner(cord: cord)
       }
    @IBAction func btn11A(_ sender: Any){
            let cord=[1,1]
        moveGoverner(cord: cord)
       }
    @IBAction func btn12A (_ sender: Any){
            let cord=[1,2]
        moveGoverner(cord: cord)
       }
    @IBAction func btn13A(_ sender: Any){
           let cord=[1,3]
        moveGoverner(cord: cord)
      }
      @IBAction func btn14A(_ sender: Any){
              let cord=[1,4]
        moveGoverner(cord: cord)
         }
      @IBAction func btn15A(_ sender: Any){
              let cord=[1,5]
        moveGoverner(cord: cord)
         }
      @IBAction func btn16A(_ sender: Any){
              let cord=[1,6]
        moveGoverner(cord: cord)
         }
      @IBAction func btn17A (_ sender: Any){
              let cord=[1,7]
        moveGoverner(cord: cord)
         }
    @IBAction func btn20A(_ sender: Any){
            let cord=[2,0]
        moveGoverner(cord: cord)
       }
    @IBAction func btn21A(_ sender: Any){
            let cord=[2,1]
        moveGoverner(cord: cord)
       }
    @IBAction func btn22A(_ sender: Any){
            let cord=[2,2]
        moveGoverner(cord: cord)
       }
    @IBAction func btn23A(_ sender: Any){
           let cord=[2,3]
        moveGoverner(cord: cord)
      }
      @IBAction func btn24A(_ sender: Any){
              let cord=[2,4]
        moveGoverner(cord: cord)}
    @IBAction func btn25A(_ sender:Any){
        let cord=[2,5]
        moveGoverner(cord: cord)
    }
      @IBAction func btn26A(_ sender: Any){
              let cord=[2,6]
        moveGoverner(cord: cord)}
      @IBAction func btn27A(_ sender: Any){
              let cord=[2,7]
        moveGoverner(cord: cord)}
    @IBAction func btn30A(_ sender: Any){
            let cord=[3,0]
        moveGoverner(cord: cord)
       }
    @IBAction func btn31A(_ sender: Any){
            let cord=[3,1]
        moveGoverner(cord: cord)
       }
    @IBAction func btn32A(_ sender: Any){
            let cord=[3,2]
        moveGoverner(cord: cord)
       }
    @IBAction func btn33A(_ sender: Any){
           let cord=[3,3]
        moveGoverner(cord: cord)
      }
      @IBAction func btn34A(_ sender: Any){
              let cord=[3,4]
        moveGoverner(cord: cord)}
      @IBAction func btn35A(_ sender: Any){
              let cord=[3,5]
        moveGoverner(cord: cord)}
      @IBAction func btn36A(_ sender: Any){
              let cord=[3,6]
        moveGoverner(cord: cord)}
      @IBAction func btn37A(_ sender: Any){
              let cord=[3,7]
        moveGoverner(cord: cord)}
    
    @IBAction func btn40A(_ sender: Any){
            let cord=[4,0]
        moveGoverner(cord: cord)
       }
    @IBAction func btn41A(_ sender: Any){
            let cord=[4,1]
        moveGoverner(cord: cord)
       }
    @IBAction func btn42A(_ sender: Any){
            let cord=[4,2]
        moveGoverner(cord: cord)
       }
    @IBAction func btn43A(_ sender: Any){
           let cord=[4,3]
        moveGoverner(cord: cord)
      }
      @IBAction func btn44A(_ sender: Any){
              let cord=[4,4]
        moveGoverner(cord: cord)}
      @IBAction func btn45A(_ sender: Any){
              let cord=[4,5]
        moveGoverner(cord: cord)}
      @IBAction func btn46A(_ sender: Any){
              let cord=[4,6]
        moveGoverner(cord: cord)}
      @IBAction func btn47A(_ sender: Any){
              let cord=[4,7]
        moveGoverner(cord: cord)}
    @IBAction func btn50A(_ sender: Any){
            let cord=[5,0]
        moveGoverner(cord: cord)
       }
    @IBAction func btn51A(_ sender: Any){
            let cord=[5,1]
        moveGoverner(cord: cord)
       }
    @IBAction func btn52A(_ sender: Any){
            let cord=[5,2]
        moveGoverner(cord: cord)
       }
    @IBAction func btn53A(_ sender: Any){
           let cord=[5,3]
        moveGoverner(cord: cord)
      }
      @IBAction func btn54A(_ sender: Any){
              let cord=[5,4]
        moveGoverner(cord: cord)}
      @IBAction func btn55A(_ sender: Any){
              let cord=[5,5]
        moveGoverner(cord: cord)}
      @IBAction func btn56A(_ sender: Any){
              let cord=[5,6]
        moveGoverner(cord: cord)}
      @IBAction func btn57A(_ sender: Any){
              let cord=[5,7]
        moveGoverner(cord: cord)}
    @IBAction func btn60A(_ sender: Any){
            let cord=[6,0]
        moveGoverner(cord: cord)
       }
    @IBAction func btn61A(_ sender: Any){
            let cord=[6,1]
        moveGoverner(cord: cord)
       }
    @IBAction func btn62A(_ sender: Any){
            let cord=[6,2]
        moveGoverner(cord: cord)
       }
    @IBAction func btn63A(_ sender: Any){
           let cord=[6,3]
        moveGoverner(cord: cord)
      }
      @IBAction func btn64A(_ sender: Any){
              let cord=[6,4]
        moveGoverner(cord: cord)}
      @IBAction func btn65A(_ sender: Any){
              let cord=[6,5]
        moveGoverner(cord: cord)}
      @IBAction func btn66A(_ sender: Any){
              let cord=[6,6]
        moveGoverner(cord: cord)}
      @IBAction func btn67A(_ sender: Any){
              let cord=[6,7]
        moveGoverner(cord: cord)}
    @IBAction func btn70A(_ sender: Any){
            let cord=[7,0]
        moveGoverner(cord: cord)
       }
    @IBAction func btn71A(_ sender: Any){
            let cord=[7,1]
        moveGoverner(cord: cord)
       }
    @IBAction func btn72A(_ sender: Any){
            let cord=[7,2]
        moveGoverner(cord: cord)
       }
    @IBAction func btn73A(_ sender: Any){
           let cord=[7,3]
        moveGoverner(cord: cord)
      }
      @IBAction func btn74A(_ sender: Any){
              let cord=[7,4]
        moveGoverner(cord: cord)}
      @IBAction func btn75A(_ sender: Any){
              let cord=[7,5]
        moveGoverner(cord: cord)}
      @IBAction func btn76A(_ sender: Any){
              let cord=[7,6]
        moveGoverner(cord: cord)}
      @IBAction func btn77A(_ sender: Any){
              let cord=[7,7]
        moveGoverner(cord: cord)}
}

