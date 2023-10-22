import SwiftUI

struct ContentinputCell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblFirstName)
                        .font(FontScheme.kGoogleSansRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(54.0), height: getRelativeHeight(16.0),
                               alignment: .leading)
                        .padding(.trailing)
                    Text(StringConstants.kLblFirstName2)
                        .font(FontScheme.kGoogleSansBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(81.0), height: getRelativeHeight(21.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(11.0))
                }
                .frame(width: getRelativeWidth(81.0), height: getRelativeHeight(48.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(24.0))
                Image("img_user")
                    .resizable()
                    .frame(width: getRelativeWidth(15.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.leading, getRelativeWidth(173.0))
                    .padding(.trailing, getRelativeWidth(27.0))
            }
            .frame(width: getRelativeWidth(324.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                       bottomRight: 8.0)
                    .fill(ColorConstants.Gray200))
        }
        .hideNavigationBar()
    }
}

/* struct ContentinputCell_Previews: PreviewProvider {

 static var previews: some View {
 			ContentinputCell()
 }
 } */
