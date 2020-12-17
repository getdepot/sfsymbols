import SwiftUI

public struct SFSymbolicator {
    
    public init() {
        
    }
    
    public func Categories() -> [Category] {
        return Category.allCases
    }
    
    public func Symbols(withStyle style: Style) -> [String] {
        allSymbols().filter{ $0.contains(style.rawValue.lowercased()) }
    }
    
    public func Symbols(withShape shape: Shape) -> [String] {
        allSymbols().filter{ $0.contains(shape.rawValue.lowercased()) }
    }
    
    public func Symbols(withStyle style: Style, withShape shape: Shape) -> [String] {
        allSymbols().filter{ $0.contains(style.rawValue.lowercased()) }.filter{ $0.contains(shape.rawValue.lowercased()) }
    }
    
    public func Symbols(withCategory category: Category) -> [String] {
        category.Symbols()
    }
    
    public func Symbols(withCategory category: Category, containing: String) -> [String] {
        return category.Symbols().filter{ $0.contains(containing.lowercased()) }
    }
    
    public enum Style: String, CaseIterable {
        case Fill
        case Crop
        case Right
        case Left
        case Forward
        case Backward
        case Up
        case Down
        case Badge
    }
    
    public enum Shape: String, CaseIterable {
        case Crop
        case Plus
        case Minus
        case Slash
        case Rectangle
        case Circle
        case Square
        case Arrow
    }
    
    public enum Category: String, CaseIterable {
        case Communications
        case Weather
        case ObjectsAndTools
        case Devices
        case Gaming
        case Connectivity
        case Transportation
        case Human
        case Nature
        case Editing
        case TextFormatting
        case Media
        case Keyboard
        case Commerce
        case Time
        case Health
        case Shapes
        case Arrows
        case Indices
        case Math
        
        public func Description() -> String {
            switch self {
                case .ObjectsAndTools: return "Objects And Tools"
                case .TextFormatting: return "Text Formatting"
                default: return self.rawValue.capitalized
            }
        }
        
        public func Symbols() -> [String] {
            switch self {
                case .Communications: return SFSymbolicator().communications()
                case .Weather: return SFSymbolicator().weather()
                case .ObjectsAndTools: return SFSymbolicator().objectsandtools()
                case .Devices: return SFSymbolicator().devices()
                case .Gaming: return SFSymbolicator().gaming()
                case .Connectivity: return SFSymbolicator().connectivity()
                case .Transportation: return SFSymbolicator().transportation()
                case .Human: return SFSymbolicator().human()
                case .Nature: return SFSymbolicator().nature()
                case .Editing: return SFSymbolicator().editing()
                case .TextFormatting: return SFSymbolicator().textformatting()
                case .Media: return SFSymbolicator().media()
                case .Keyboard: return SFSymbolicator().keyboard()
                case .Commerce: return SFSymbolicator().commerce()
                case .Time: return SFSymbolicator().time()
                case .Health: return SFSymbolicator().health()
                case .Shapes: return SFSymbolicator().shapes()
                case .Arrows: return SFSymbolicator().arrows()
                case .Indices: return SFSymbolicator().indices()
                case .Math: return SFSymbolicator().math()
            }
        }
        
        public func Symbols(containing: String) -> [String] {
            return Symbols().filter{ $0.contains(containing.lowercased()) }
        }
    }
    
    public func Symbols(containing components: [Component]) -> [String] {
        if components.count == 0 { return [] }
        
        var results: [String] = allSymbols()
        
        for search in components {
            results = results.filter{ $0.contains(search.rawValue.lowercased()) }
        }
        
        return results
    }
    
    struct iconView: View {

        var body: some View {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 30, maximum: 90))], alignment: .center, spacing: 6) {
                
                ForEach(Category.Human.Symbols(containing: "lung"), id: \.self) { icon in
                    
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
