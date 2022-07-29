
//3 views on another 3x sizes
//@IBOutlet weak var vwPulsing3: UIView!
//@IBOutlet weak var vwPulsing2: UIView!
//@IBOutlet weak var vwPulsing: UIView!
private configUI(){
    self.vwPulsing.layer.cornerRadius = vwPulsing.frame.height / 2
    self.vwPulsing.clipsToBounds = true
    self.vwPulsing.backgroundColor = .white
    self.vwPulsing.alpha = 0

    self.vwPulsing2.layer.cornerRadius = vwPulsing2.frame.height / 2
    self.vwPulsing2.clipsToBounds = true
    self.vwPulsing2.backgroundColor = .white
    self.vwPulsing2.alpha = 0

    self.vwPulsing3.layer.cornerRadius = vwPulsing3.frame.height / 2
    self.vwPulsing3.clipsToBounds = true
    self.vwPulsing3.backgroundColor = .white
    self.vwPulsing3.alpha = 0
}

private func animatePulsing(scale: Double = 1.2){
    
    UIView.animate(withDuration: 2.0, delay: 3, options: [.autoreverse, .repeat]) {
        self.vwPulsing3.alpha = 0.2
        self.vwPulsing3.transform = CGAffineTransform(scaleX: scale, y: scale)
        self.vwPulsing3.layoutIfNeeded()
    } completion: { _ in
    }
    
    UIView.animate(withDuration: 2.0, delay: 2, options: [.autoreverse, .repeat]) {
        self.vwPulsing.alpha = 0.3
        self.vwPulsing.transform = CGAffineTransform(scaleX: scale, y: scale)
        self.vwPulsing.layoutIfNeeded()
    } completion: { _ in
    }
    
    UIView.animate(withDuration: 2.0, delay: 1, options: [.autoreverse, .repeat]) {
        self.vwPulsing2.alpha = 0.4
        self.vwPulsing2.transform = CGAffineTransform(scaleX: scale, y: scale)
        self.vwPulsing2.layoutIfNeeded()
    } completion: { _ in
    }
}
