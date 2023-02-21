//
//  ViewController.swift
//  subViews
//
//  Created by DIRECTOR on 11.12.2022.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewWillAppear(_ animated: Bool) {
     AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)
         }
    
    @IBAction func showSubView(sender: AnyObject) {
        let squareBackground = UIView(frame: CGRect(origin: .init(x:100, y:200), size: CGSize(width: 200, height: 200)))
        squareBackground.layer.cornerRadius = squareBackground.frame.height / 2
        squareBackground.backgroundColor = UIColor.white
        self.view.addSubview(squareBackground)
        
//        let centerSquare = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 190, height: 190)))
//        centerSquare.backgroundColor = UIColor(red: 75/255, green: 173/255, blue: 212/255, alpha: 1.0)
//        centerSquare.layer.cornerRadius = centerSquare.bounds.height / 2
//        centerSquare.center = CGPoint(x: squareBackground.bounds.width / 2, y: squareBackground.bounds.height / 2)
//        squareBackground.addSubview(centerSquare)
        
        let image1 = UIImage(named: "pokimanelol.jpg")
        
        let imageView = UIImageView(image: image1)
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 100
        imageView.frame = CGRect(origin: .init(x:5, y:5), size: CGSize(width: 190, height: 190))
        
        squareBackground.addSubview(imageView)
        
        //self.view.addSubview(imageView)
        
    }
    

  
    
    
//       UIView.animate(withDuration: 10.0, animations: {
//
//            let pi = CGFloat(M_PI)
//            centerSquare.backgroundColor = UIColor.blue
//            let rotation = CGAffineTransformMakeRotation(pi)
//            centerSquare.transform = rotation
//            
//            
//            let expand = CGAffineTransformMakeScale(2, 2)
//            centerSquare.transform = expand
//
//        })

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

