import Foundation

import SwiftUI


struct ContentView: View {
    var activities = ["Archery", "baseball" , "basketball"]
    @State var selected = "Archery" // compiler know now only
    var body : some View{

     Vstack {

        Text("Why not Try..").font(.largeTitle)
         .fontWeight(.bold)

        Circle().
         fill(Color.blue)
         .overlay{
             Image(systemName: "figure.\(selected.lowercased())")// need to put image in the asset >>Image ("name")
             .font(.system(size:144))
             .foregroundColor(.white)
         }

        // Text("Archery.")
        // .font(.title)

         Text("\(selected)")
        .font(.title)

        // Button("try again"){
        //    print("tapped try again btn")
        //   }.buttonStyle(.borderProminent)

        Button("try again"){
          let  randomelement =  activities.randomElement()
          if let unwrapped = randomevalue{
              selected =  unwrapped
          }else{
              selected =  "No items"
          }
          
          guard let unwrapped =  randomevalue else 
          return

          selected = randomvalue! // we are foricng to compiler

          selected = randomValue ?? "no Item"


           
          }.buttonStyle(.borderProminent)

       

        }.padding()
    }
}

 