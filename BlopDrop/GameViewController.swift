//
//  GameViewController.swift
//  BlopDrop
//
//  Created by Алексей Гончаров on 22.10.2022.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        
        //Создание Вью
        if let view = self.view as! SKView? {
            
            //Создание сцены
            let scene = GameScene(size: view.bounds.size)
            
            //Настройка отображения сцены
            scene.scaleMode = .aspectFill
            
            //Настройка бэкграунда
            scene.backgroundColor = UIColor(red: 105/255,
                                            green: 157/255,
                                            blue: 181/255,
                                            alpha: 1.0)
            //Отображение сцены
            view.presentScene(scene)
            
            //Настройка опций
            view.ignoresSiblingOrder = false
            view.showsPhysics = false
            view.showsFPS = true
            view.showsNodeCount = true
        }
        
        super.viewDidLoad()
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
