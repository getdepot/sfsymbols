import SwiftUI

struct SFSymbolicator {
    
    typealias Category = SFSymbolicatorCore.Category

    struct iconView: View {

        var body: some View {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 30, maximum: 90))], alignment: .center, spacing: 6) {
                
                ForEach(Category.Human.symbols(containing: "lung"), id: \.self) { icon in
                    
                        Image(systemName: icon)
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .padding(4)
                            .frame(minWidth:30, minHeight: 30)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            
                            .clipShape(RoundedRectangle(cornerRadius: 4, style: .continuous))
                            .tag(icon)
                }
            }
            //return Image(systemName: "tray")
        }
    }

    struct NoDataView_Previews: PreviewProvider {
        static var previews: some View {
            SFSymbolicator.iconView()
        }
    }
}
