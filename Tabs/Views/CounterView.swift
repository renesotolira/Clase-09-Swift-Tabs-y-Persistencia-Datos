//
//  CounterView.swift
//  Tabs
//
//  Created by Rene SL on 30/10/23.
//

import SwiftUI

struct CounterView: View {
    
    @ObservedObject var counter : Counter = Counter()
    
    var body: some View {
        VStack{
            
            Text("\(self.counter.number)")
                .font(.title)
                .bold()
            
            HStack{
                Button(action: {
                    self.counter.stop()
                }){
                    HStack{
                        
                        Image(systemName: "stop.fill").foregroundColor(.white)
                        
                        Text("Stop")
                            .foregroundColor(.white)
                            .font(.headline)
                        
                    } .padding(.all)
                }.background(Color.red)
                
                
                Button(action: {
                    self.counter.start()
                }){
                    HStack{
                        
                        Image(systemName: "play.fill").foregroundColor(.white)
                        
                        Text("Start")
                            .foregroundColor(.white)
                            .font(.headline)
                        
                    } .padding(.all)
                }.background(Color.green)
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
