//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

func cF(x: Float) -> Float {
    return Float(x/255)
}
var str = "Hello, playground"
//class Circle:CAShapeLayer {
//    init(path: UIBezierPath, ) {
//
//    }
//}
class CustomView: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        

        
         let circlePath = UIBezierPath(arcCenter: CGPoint(x: 200,y: 200), radius: CGFloat(150), startAngle: CGFloat(0), endAngle:CGFloat(Double.pi * 4), clockwise: true)
        
         let shapeLayer = CAShapeLayer()
         shapeLayer.path = circlePath.cgPath
         shapeLayer.lineCap = "round"
         shapeLayer.lineDashPattern = [1,20]
         //change the fill color
         shapeLayer.fillColor = UIColor.clear.cgColor
         //you can change the stroke color
         shapeLayer.strokeColor = UIColor.init(colorLiteralRed: cF(x: 221.0), green: cF(x: 69.0), blue: cF(x: 51.0), alpha: 1.0).cgColor
         //you can change the line width
         shapeLayer.lineWidth = 12.0
         layer.addSublayer(shapeLayer)
 
        
    }
}

let containerView = CustomView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
containerView.backgroundColor = UIColor.init(colorLiteralRed: 37/255, green: 57/255, blue: 107/255, alpha: 1.0)
containerView.layer.cornerRadius = 4.0

PlaygroundPage.current.liveView = containerView



