import SwiftUI

struct CardCell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                HStack {
                    Button(action: {}, label: {
                        Image("img_frame1_gray_900")
                    })
                    .frame(width: getRelativeWidth(54.0), height: getRelativeWidth(56.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 28.0, topRight: 28.0, bottomLeft: 28.0,
                                               bottomRight: 28.0)
                            .fill(ColorConstants.Gray200))
                    Text(StringConstants.kLblGoogle)
                        .font(FontScheme.kGoogleSansBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(54.0), height: getRelativeHeight(21.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(24.0))
                }
                .frame(width: getRelativeWidth(134.0), height: getRelativeHeight(56.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(24.0))
                VStack {
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(17.0), height: getRelativeWidth(19.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 9.75, topRight: 9.75, bottomLeft: 9.75,
                                                   bottomRight: 9.75)
                                .fill(ColorConstants.Bluegray200A2))
                        .padding(.all, getRelativeWidth(18.0))
                        .padding(.vertical, getRelativeHeight(18.0))
                        .padding(.horizontal, getRelativeWidth(18.0))
                }
                .frame(width: getRelativeWidth(54.0), height: getRelativeWidth(56.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 28.0, topRight: 28.0, bottomLeft: 28.0,
                                           bottomRight: 28.0)
                        .fill(ColorConstants.Gray101))
                .padding(.leading, getRelativeWidth(85.0))
                .padding(.trailing, getRelativeWidth(24.0))
            }
            .frame(width: getRelativeWidth(324.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 52.0, topRight: 52.0, bottomLeft: 52.0,
                                       bottomRight: 52.0)
                    .fill(ColorConstants.Gray101))
        }
        .hideNavigationBar()
    }
}

/* struct CardCell_Previews: PreviewProvider {

 static var previews: some View {
 			CardCell()
 }
 } */
