import SwiftUI


struct CalculatorView: View{

    @State var numberOne: String = ""
    @State var numberTwo: String = ""

    @State var answer: Double = 0.0
    @StateObject var ViewModel = ViewModel()
     


    
    var body : some View{

        VStack{
            TextField("Enter the number", text: $numberOne).TextFieldStyle(.roundBorder())
            TextField("Enter the number", text: $numberTwo).TextFieldStyle(.roundBorder())



            Hstack{
                Button("Add"){
                 ViewModel.addition(numberOne: numberOne, numberTwo: numberTwo)

                }.tint(.red)

                Button("Subtract"){
                      ViewModel.substraction(numberOne: numberOne, numberTwo: numberTwo)
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