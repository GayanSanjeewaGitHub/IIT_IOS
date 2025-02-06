import SwiftUI


struct CalculatorView: View{

    @State var numberOne: String = ""
    @State var numberTwo: String = ""

    @State var answer: Double = 0.0

    func addition( ) -> Double {
        guard let x =  Double (numberOne) else {return 0}
        guard let y =  Double (numberOne) else {return 0}
        let z = x+ y
        return z
    }

    func subtraction( )   -> Double  {
        guard let x =  Double (numberOne) else {return 0}
        guard let y =  Double (numberOne) else {return 0}
        let z = x - y
        return z
    }

    func multiplication(   )  -> Double {
        guard let x =  Double (numberOne) , x!= 0 else {return 0}
        guard let y =  Double (numberOne) else {return 0}
        let z = x * y
        return z
    }

    func devide(   )  -> Double {
        guard let x =  Double (numberOne) else {return 0}
        guard let y =  Double (numberOne) else {return 0}
        let z = x * y
        return z
    }



    
    var body : some View{

        VStack{
            TextField("Enter the number", text: $numberOne).TextFieldStyle(.roundBorder())
            TextField("Enter the number", text: $numberTwo).TextFieldStyle(.roundBorder())



            Hstack{
                Button("Add"){
                   answer =   addition()

                }.tint(.red)

                Button("Subtract"){
                      answer =  substraction()
                }.tint(.blue)
            }

            Text("This is input  :  \(text)")

            TextField("Enter the number", text: $text)
            TextField("Enter the number", text: $text)

        }
    }

}



{
    CalculatorView()
}