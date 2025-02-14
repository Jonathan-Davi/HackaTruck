//
//  ContentView.swift
//  Desafio09
//
//  Created by Turma02-8 on 13/02/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var Local = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -22.951911, longitude: -43.2130621),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    )
    
    @State var localSelecionado: Locais = monumentos[0]
    @State private var mostrarDetalhe = false
    
    var body: some View {
        ZStack{
            Map(position: $Local){
                Annotation("\(localSelecionado.nome)", coordinate: CLLocationCoordinate2D(latitude: localSelecionado.latitude, longitude: localSelecionado.longitude)) {
                    Image(systemName: "location.north.circle.fill")
                        .font(.system(size: 30))
                        .onTapGesture {
                            mostrarDetalhe.toggle()
                        }
                        .sheet(isPresented: $mostrarDetalhe){
                            Detalhe(lugares: localSelecionado)
                        }
                }
            }.ignoresSafeArea()
            
            VStack{
                Picker("Escolha um local!", selection: $localSelecionado){
                    ForEach(monumentos, id: \.self){ i in
                        Text(i.nome)
                    }
                    .onChange(of: localSelecionado) { oldValue, newValue in
                        Local = MapCameraPosition.region(
                            MKCoordinateRegion(
                                center: CLLocationCoordinate2D(latitude: localSelecionado.latitude, longitude: localSelecionado.longitude),
                                span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
                        )}
                }.frame(width: 250, height: 50).background(Color(.marrom1)).cornerRadius(12).shadow(radius: 10).tint(.black)

                Spacer()
                
                Button {
                    
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 250, height: 50)
                            .tint(.marrom1)
                            .shadow(radius: 10)
                            .cornerRadius(12)
                        Text("Maravilhas do Mundo")
                            .foregroundStyle(.black)
                            .font(.title3)
                            .fontWeight(.medium)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
