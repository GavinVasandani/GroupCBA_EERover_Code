//
//  ViewController.swift
//  RealSuperCoolGV
//
//  Created by Gavin Vasandani on 03/06/2022.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view.
        title = "Command Center";
        
        //create request to load to webview:
        BtnPressedDefault();
        //force unwrapping means: (not sure go over)
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds);
        backgroundImage.image = UIImage(named: "moonbackground");
        backgroundImage.contentMode = .scaleAspectFill;
        view.insertSubview(backgroundImage, at: 0);
        
        //button functionality
        let frontButton = createButton(x:147, y:189, title:"Front", color:.systemBlue); //x:147
        view.addSubview(frontButton);
        let leftButton = createButton(x:25, y:370, title:"Left", color:.systemBlue);
        view.addSubview(leftButton);
        let rightButton = createButton(x:270, y:370, title:"Right", color:.systemBlue);
        view.addSubview(rightButton);
        let stopButton = createButton(x:147, y:370, title:"Stop", color:.systemRed);
        view.addSubview(stopButton);
        let detectButton = createButton(x: 147, y: 280, title: "Detect", color: .systemGreen);
        view.addSubview(detectButton);
        let frButton = createButton(x:270, y:280, title:"Front Right", color:.systemBlue); //x:147
        view.addSubview(frButton);
        let flButton = createButton(x:25, y:280, title:"Front Left", color:.systemBlue); //x:147
        view.addSubview(flButton);
        let turnButton = createButton(x: 147, y: 460, title: "Turn", color: .systemPurple);
        view.addSubview(turnButton);
        let backButton = createButton(x: 147, y: 550, title: "Back", color: .systemBlue);
        view.addSubview(backButton);
        let blButton = createButton(x:25, y:460, title:"Back Left", color:.systemBlue); //x:147
        view.addSubview(blButton);
        let brButton = createButton(x:270, y:460, title:"Back Right", color:.systemBlue); //x:147
        view.addSubview(brButton);
        //let leftButton = createButton(x:25, y:340, title:"Left", color:.systemBlue);
        //view.addSubview(leftButton);
        
        //let icon = UIImage(named: "upArrowChev")!
        //frontButton.setImage(icon, for: .normal)
        //frontButton.imageView?.contentMode = .scaleAspectFit
        //frontButton.largeContentImageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        //functionality
        //print("Hello World!");
        
        frontButton.addTarget(self, action:#selector(BtnPressedFront), for: .touchDown);
        frontButton.addTarget(self, action:#selector(BtnPressedDefault), for: [.touchUpInside, .touchUpOutside]);
        
        //so we want to output a specific URL when a specific button is clicked
        detectButton.addTarget(self,action:#selector(BtnPressedDetect), for: .touchDown);
        detectButton.addTarget(self, action:#selector(BtnPressedDefault), for: [.touchUpInside, .touchUpOutside]);
        
        leftButton.addTarget(self, action:#selector(BtnPressedLeft), for: .touchDown);
        leftButton.addTarget(self, action:#selector(BtnPressedDefault), for: [.touchUpInside, .touchUpOutside]);
        
        rightButton.addTarget(self, action:#selector(BtnPressedRight), for: .touchDown);
        rightButton.addTarget(self, action:#selector(BtnPressedDefault), for: [.touchUpInside, .touchUpOutside]);
        
        stopButton.addTarget(self, action:#selector(BtnPressedStop), for: .touchDown);
        stopButton.addTarget(self, action:#selector(BtnPressedDefault), for: [.touchUpInside, .touchUpOutside]);
        
        backButton.addTarget(self, action:#selector(BtnPressedBack), for: .touchDown);
        backButton.addTarget(self, action:#selector(BtnPressedDefault), for: [.touchUpInside, .touchUpOutside]);
        
        frButton.addTarget(self, action:#selector(BtnPressedfr), for: .touchDown);
        frButton.addTarget(self, action:#selector(BtnPressedDefault), for: [.touchUpInside, .touchUpOutside]);
        
        flButton.addTarget(self, action:#selector(BtnPressedfl), for: .touchDown);
        flButton.addTarget(self, action:#selector(BtnPressedDefault), for: [.touchUpInside, .touchUpOutside]);
        
        brButton.addTarget(self, action:#selector(BtnPressedbr), for: .touchDown);
        brButton.addTarget(self, action:#selector(BtnPressedDefault), for: [.touchUpInside, .touchUpOutside]);
        
        blButton.addTarget(self, action:#selector(BtnPressedbl), for: .touchDown);
        blButton.addTarget(self, action:#selector(BtnPressedDefault), for: [.touchUpInside, .touchUpOutside]);
        
        turnButton.addTarget(self, action:#selector(BtnPressedTurn), for: .touchDown);
        turnButton.addTarget(self, action:#selector(BtnPressedDefault), for: [.touchUpInside, .touchUpOutside]);
    }
    
        @objc private func BtnPressedDefault () {
            //URL executed when front is clicked
            webview.load(URLRequest(url: URL(string: "http://192.168.0.4/stop")!));
        }
    
        @objc private func BtnPressedFront () {
            webview.load(URLRequest(url: URL(string: "http://192.168.0.4/f")!));
        }
    
        @objc private func BtnPressedDetect () {
            //URL executed when front is clicked
            webview.load(URLRequest(url: URL(string: "http://192.168.0.4/detect")!));
        }

        @objc private func BtnPressedLeft () {
            //URL executed when left is clicked
            webview.load(URLRequest(url: URL(string: "http://192.168.0.4/l")!));
        }
    
        @objc private func BtnPressedRight () {
            //URL executed when right is clicked
            webview.load(URLRequest(url: URL(string: "http://192.168.0.4/r")!));
        }

        @objc private func BtnPressedStop () {
            //URL executed when stop is clicked
            webview.load(URLRequest(url: URL(string: "http://192.168.0.4/stop")!));
        }
    
        @objc private func BtnPressedBack () {
            //URL executed when stop is clicked
            webview.load(URLRequest(url: URL(string: "http://192.168.0.4/back")!));
        }
    
        @objc private func BtnPressedfr () {
            //URL executed when stop is clicked
            webview.load(URLRequest(url: URL(string: "http://192.168.0.4/fr")!));
        }
    
        @objc private func BtnPressedfl () {
            //URL executed when stop is clicked
            webview.load(URLRequest(url: URL(string: "http://192.168.0.4/fl")!));
        }
    
        @objc private func BtnPressedbr () {
            //URL executed when stop is clicked
            webview.load(URLRequest(url: URL(string: "http://192.168.0.4/br")!));
        }

        @objc private func BtnPressedbl () {
            //URL executed when stop is clicked
            webview.load(URLRequest(url: URL(string: "http://192.168.0.4/bl")!));
        }
    
        @objc private func BtnPressedTurn () {
            //URL executed when stop is clicked
            webview.load(URLRequest(url: URL(string: "http://192.168.0.4/turn")!));
        }
    
    func createButton(x:Int, y:Int, title:String, color:UIColor) -> UIButton {
        let button = UIButton(frame: CGRect(x: x, y: y, width: 100, height: 50));
        button.configuration = createConfig(title:title, color:color);
        return button;
    }

    func createConfig(title : String, color : UIColor) -> UIButton.Configuration {
        var config: UIButton.Configuration = .filled();
        config.baseBackgroundColor = color;
        config.title = title;
        return config;
    }
}

