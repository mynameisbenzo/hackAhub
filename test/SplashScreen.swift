//
//  SplashScreenControllerViewController.swift
//  test
//
//  Created by Lorenzo Hernandez on 11/5/17.
//  Copyright © 2017 Lorenzo Hernandez. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class SplashScreen: UIViewController {
    
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        playVideo()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    //Mark: Private functions
    private func playVideo(){
        guard let path = Bundle.main.path(forResource: "applayout_1", ofType:"mp4")else {
            debugPrint("Video not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        
        let movieLayer = AVPlayerLayer(player: player)
        movieLayer.frame = view.frame
        player.actionAtItemEnd = .none
        movieLayer.videoGravity = AVLayerVideoGravityResize
        self.view.layer.addSublayer(movieLayer)
        
        let playerController = AVPlayerViewController()
        playerController.player = player
        
        playerController.showsPlaybackControls = false
        
        present(playerController, animated: true){
            player.play()
        }
    }
    
}
