//
//  ViewController.swift
//  HomeWorkTicTacToe
//
//  Created by Ani on 8/24/19.
//  Copyright © 2019 Ani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player1 = 1
    var ticToeArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    //    var Play = true
    
    @IBOutlet var btn_0: UIButton!
    @IBOutlet var btn_1: UIButton!
    @IBOutlet var btn_2: UIButton!
    @IBOutlet var btn_3: UIButton!
    @IBOutlet var btn_4: UIButton!
    @IBOutlet var btn_5: UIButton!
    @IBOutlet var btn_6: UIButton!
    @IBOutlet var btn_7: UIButton!
    @IBOutlet var btn_8: UIButton!
    
    
    
    
    func changeValue() ->Int {
        let value =  Int.random(in: 0...8)
        return value
    }
    
    
    
    @IBOutlet var txtTurn: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var winComb = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
    @IBAction func btnInput(_ sender: UIButton)
        
    {
        
        
        if(ticToeArray[sender.tag] == 0)// && )//Play == true)
        {
            ticToeArray[sender.tag] = player1
            
            if(player1 == 1)
            {
                sender.setTitle("X", for: .normal)
                player1 = 2
            }
            
            ////            hamakargchov xaxalu hamar\\\
            
            
            
            var value = changeValue()
            
            repeat{
                
                switch value{
                case 0:
                    if(btn_0.currentTitle != "X" && btn_0.currentTitle != "O" && btn_0 !=  nil)
                    {
                        btn_0.setTitle("O", for: .normal)
                        player1 = 1
                    }else
                    {
                        value = changeValue()
                    }
                case 1:
                    if(btn_1.currentTitle != "X" && btn_1.currentTitle != "O" && btn_1 !=  nil)
                    {
                        btn_1.setTitle("O", for: .normal)
                        player1 = 1
                    }else
                    {
                        value = changeValue()
                    }
                case 2:
                    if(btn_2.currentTitle != "X" && btn_2.currentTitle != "O" && btn_2 !=  nil)
                    {
                        btn_2.setTitle("O", for: .normal)
                        player1 = 1
                    }else
                    {
                        value = changeValue()
                    }
                case 3:
                    if(btn_3.currentTitle != "X" && btn_3.currentTitle != "O" && btn_3 !=  nil)
                    {
                        btn_3.setTitle("O", for: .normal)
                        player1 = 1
                    }else
                    {
                        value = changeValue()
                    }
                case 4:
                    if(btn_4.currentTitle != "X" && btn_4.currentTitle != "O" && btn_4 !=  nil)
                    {
                        btn_4.setTitle("O", for: .normal)
                        player1 = 1
                    }else
                    {
                        value = changeValue()
                    }
                case 5:
                    if(btn_5.currentTitle != "X" && btn_5.currentTitle != "O" && btn_5 !=  nil)
                    {
                        btn_5.setTitle("O", for: .normal)
                        player1 = 1
                    }else
                    {
                        value = changeValue()
                    }
                case 6:
                    if(btn_6.currentTitle != "X" && btn_6.currentTitle != "O" && btn_6 !=  nil)
                    {
                        btn_6.setTitle("O", for: .normal)
                        player1 = 1
                    }else
                    {
                        value = changeValue()
                    }
                case 7:
                    if(btn_7.currentTitle != "X" && btn_7.currentTitle != "O" && btn_7 !=  nil)
                    {
                        btn_7.setTitle("O", for: .normal)
                        player1 = 1
                    }else
                    {
                        value = changeValue()
                    }
                case 8:
                    if(btn_8.currentTitle != "X" && btn_8.currentTitle != "O" && btn_8 !=  nil)
                    {
                        btn_8.setTitle("O", for: .normal)
                        player1 = 1
                    }else
                    {
                        value = changeValue()
                    }
                default:
                    
                    value = changeValue()
                    //       player1 = 1
                    
                }
            }
                while(player1 !=  1)
            
            
            
            
            
            
            
        }
        
        for comb in winComb{
            if(ticToeArray[comb[0]] != 0 &&
                ticToeArray[comb[0]] == ticToeArray[comb[1]] && ticToeArray[comb[1]] == ticToeArray[comb[2]])
            {
                //Play = false
                if(ticToeArray[comb[0]] == 1)
                {
                    txtTurn.text = "First Won"
                }
                else
                {
                    txtTurn.text = "Second Won"
                }
            }
        }
        
        
    }
    
}







//
//
//            if(value == 0 && btn_0.currentTitle != "X")
//            {
//                btn_0.setTitle("O", for: .normal)
//            }else
//            {
//                value = changeValue()
//            }
//            if(value == 1 && btn_1.currentTitle != "X")
//            {
//                btn_1.setTitle("O", for: .normal)
//            }else
//            {
//                value = changeValue()
//            }
//            if(value == 2 && btn_2.currentTitle != "X")
//            {
//                btn_2.setTitle("O", for: .normal)
//            }else
//            {
//                value = changeValue()
//            }
//            if(value == 3 && btn_3.currentTitle != "X")
//            {
//                btn_3.setTitle("O", for: .normal)
//            }else
//            {
//                value = changeValue()
//            }
//            if(value == 4 && btn_4.currentTitle != "X")
//            {
//                btn_4.setTitle("O", for: .normal)
//            }else
//            {
//                value = changeValue()
//            }
//            if(value == 5 && btn_5.currentTitle != "X")
//            {
//                btn_5.setTitle("O", for: .normal)
//            }else
//            {
//                value = changeValue()
//            }
//            if(value == 6 && btn_6.currentTitle != "X")
//            {
//                btn_6.setTitle("O", for: .normal)
//            }else
//            {
//                value = changeValue()
//            }
//            if(value == 7 && btn_7.currentTitle != "X")
//            {
//                btn_7.setTitle("O", for: .normal)
//            }else
//            {
//                value = changeValue()
//            }
//            if(value == 8 && btn_8.currentTitle != "X")
//            {
//                btn_8.setTitle("O", for: .normal)
//            }else
//            {
//                value = changeValue()
//            }
//            if(value == 9 && btn_9.currentTitle != "X")
//            {
//                btn_9.setTitle("O", for: .normal)
//            }else
//            {
//                value = changeValue()
//            }
//
//










//
//
//
//
//            sender.tag = value
//
//                while(ticToeArray[sender.tag] != 0)
//                {
//                   value = changeValue()
//            }
//
//
//            if(ticToeArray[sender.tag] == 0 )
//            {
//
//                sender.setTitle("O", for: .normal)
//                player1 = 1
//
//            }


//////////
//erku hogov xaxalu hamar
//        else
//        {
//            sender.setTitle("O", for: .normal)
//            player1 = 1
//
//
//    }



