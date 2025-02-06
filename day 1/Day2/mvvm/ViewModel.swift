import Foundation



class  ViewModel : ObersevableObject {
   
   @Published  var result : Double = 0
      mutating func addition( numberOne :String , numberTwo: String ) -> Double {
        guard let x =  Double (numberOne) else {return 0}
        guard let y =  Double (numberTwo) else {return 0}
        result = x+ y
        return result
    }

     mutating func subtraction( )   -> Double  {
        guard let x =  Double (numberOne) else {return 0}
        guard let y =  Double (numberOne) else {return 0}
         result = x+ y
        return result
    }

    mutating func multiplication(   )  -> Double {
        guard let x =  Double (numberOne) , x!= 0 else {return 0}
        guard let y =  Double (numberOne) else {return 0}
         result = x* y
        return result
    }

    func devide(   )  -> Double {
        guard let x =  Double (numberOne) else {return 0}
        guard let y =  Double (numberOne) else {return 0}
        let z = x / y
        return z
    }
    }