import SwiftUI

struct RightCardSmCell: View {
    var body: some View {
        ZStack(alignment: .leading) {
            ZStack {}
                .hideNavigationBar()
                .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(78.0),
                       alignment: .leading)
                .shadow(color: ColorConstants.Gray8003f, radius: 14, x: 0, y: 4)
            ZStack(alignment: .bottomLeading) {
                Image("img_right1cardsm")
                    .resizable()
                    .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(80.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0))
                Text(StringConstants.kLblTurkey)
                    .font(FontScheme.kSFProTextSemibold(size: getRelativeHeight(15.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(50.86))
                    .padding(.trailing, getRelativeWidth(16.0))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(80.0),
                   alignment: .leading)
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(74.0), alignment: .leading)
        .shadow(color: ColorConstants.Gray8003f, radius: 14, x: 0, y: 4)
    }
}

/* struct RightCardSmCell_Previews: PreviewProvider {

 static var previews: some View {
 			RightCardSmCell()
 }
 } */
