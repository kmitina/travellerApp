//
//  ContentView.swift
//  Traveller App
//
//  Created by DVKSH on 30.07.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Image("home").font(.title)
            }
            
            Text("activity").tabItem {
                Image("activity").font(.title)
            }
            
            Text("search").tabItem {
                Image("search").font(.title)
            }
            
            Text("person").tabItem {
                Image("Setting").font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Button(action: {}) {
                        Image("menu").renderingMode(.original)
                    }
                    Spacer()
                    
                    Button(action: {}) {
                        Image("Profile").renderingMode(.original)
                    }
                }
                
                
                Text("Find More").fontWeight(.heavy).font(.largeTitle).padding(.top, 15)
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Experiences").fontWeight(.heavy).foregroundColor(.black)
                    }
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Adventures").foregroundColor(.gray)
                    }
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Activities").foregroundColor(.gray)
                    }
                }.padding(.top, 30)
                .padding(.bottom, 15)
                
                MiddleView()
                BottomView().padding(.top, 10)
                
            }.padding()
        }
    }
}

struct BottomView : View {
    var body : some View {
        VStack {
            HStack {
                Text("What you want?").fontWeight(.heavy)
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("View all").foregroundColor(.gray)
                }
            }.padding([.top], 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    
                    Button(action: {}) {
                        VStack(spacing: 8) {
                            Image("mcard1").renderingMode(.original)
                            Text("Hiking").foregroundColor(.gray)
                        }
                    }
                    
                    
                    Button(action: {}) {
                        VStack(spacing: 8) {
                            Image("mcard2").renderingMode(.original)
                            Text("Ski").foregroundColor(.gray)
                        }
                    }
                    
                    
                    Button(action: {}) {
                        VStack(spacing: 8) {
                            Image("mcard3").renderingMode(.original)
                            Text("Sky Diving").foregroundColor(.gray)
                        }
                    }
                    
                    Button(action: {}) {
                        VStack(spacing: 8) {
                            Image("mcard4").renderingMode(.original)
                            Text("SkateBoard").foregroundColor(.gray)
                        }
                    }
                    
                }
            }.padding(.leading, 5)
            .padding([.top, .bottom], 15)
        }
    }
    
}

struct Detail : View {
    var body: some View {
        VStack {
            Image("topbg").frame(width: UIScreen.main.bounds.width, height: 450).aspectRatio(1.35, contentMode: .fill).offset(y: -200).padding(.bottom, -200)
            GeometryReader{ geo in
                VStack(alignment: .leading) {
                    detailTop()
                    detailMiddle()
                    detailBottom()
                    
                }
            }.background(Color.white)
            .clipShape(Rounded())
            .padding(.top, -85)
        }
    }
}

struct detailMiddle : View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image("map").renderingMode(.original)
                Text("Kecamatan Klojen").foregroundColor(Color("bg"))
            }
            
            HStack(spacing: 8) {
                ForEach(0..<5) { _ in
                    Image(systemName: "star.fill").font(.body).foregroundColor(.yellow)
                }
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("People").fontWeight(.heavy)
                Text("Number Of People in Your Group").foregroundColor(.gray).font(.caption)
            }
            
            HStack(spacing: 6) {
                ForEach(0..<5) {i in
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("\(i + 1)").foregroundColor(.white).padding()
                    }.background(Color("bg"))
                    .cornerRadius(8)
                    
                }
            }
            
        }.padding(.leading)
    }
}

struct detailTop : View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                VStack(alignment: .leading) {
                    Text("Forest").fontWeight(.heavy).font(.title)
                    Text("Camping").fontWeight(.heavy).font(.title)
                }
                Spacer()
                Text("$299").foregroundColor(Color("bg")).font(.title)
            }
        }.padding([.leading, .top, .trailing])
    }
}

struct detailBottom : View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Description").fontWeight(.heavy)
            Text("This study examines experiences and associated meanings of 38 family groups participating in developed camping. The most common associated meanings are restoration.").foregroundColor(.gray).font(.caption)
            Spacer()
            HStack(spacing: 8) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("Save").renderingMode(.original)
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack {
                        Text("Book Your Experience")
                        Image("arrow").renderingMode(.original)
                    }.foregroundColor(.white)
                    .padding()
                }.background(Color("bg"))
                .cornerRadius(8)
            }
            .padding(.top, 5)
            
        }.padding()
    }
}


struct Rounded : Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 40, height: 40))
        return Path(path.cgPath)
    }
}

struct MiddleView : View {
    
    @State var show = false
    
    var body : some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 5) {
                    Button(action: {}) {
                        Image("Card1").renderingMode(.original)
                    }
                    
                    Text("Fishing Time").fontWeight(.heavy)
                    
                    HStack(spacing: 5) {
                        Image("map").renderingMode(.original)
                        Text("Vancouver, CA").foregroundColor(.gray)
                    }
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Button(action: {
                        self.show.toggle()
                    }) {
                        Image("Card2").renderingMode(.original)
                    }
                    
                    Text("Forest Camping").fontWeight(.heavy)
                    
                    HStack(spacing: 5) {
                        Image("map").renderingMode(.original)
                        Text("Minsk, BLR").foregroundColor(.gray)
                    }
                }
            }
        }.sheet(isPresented: $show) {
            Detail()
        }
    }
}
