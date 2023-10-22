import SwiftUI

struct SuccessView: View {
    @StateObject var successViewModel = SuccessViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Button(action: {}, label: {
                            Image("img_frame2")
                        })
                        .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                   bottomRight: 20.0)
                                .fill(ColorConstants.Gray200))
                    }
                    .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                           alignment: .trailing)
                    .clipShape(Circle())
                    .padding(.top, getRelativeHeight(32.0))
                    .padding(.horizontal, getRelativeWidth(32.0))
                    HStack {
                        VStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(4.0), height: getRelativeWidth(4.0),
                                       alignment: .trailing)
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(ColorConstants.Green600))
                                .padding(.horizontal, getRelativeWidth(27.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(4.0), height: getRelativeWidth(4.0),
                                       alignment: .leading)
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(ColorConstants.Green600))
                                .padding(.top, getRelativeHeight(7.0))
                                .padding(.horizontal, getRelativeWidth(36.0))
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(2.0),
                                           height: getRelativeWidth(2.0), alignment: .top)
                                    .background(RoundedCorners(topLeft: 1.0, topRight: 1.0,
                                                               bottomLeft: 1.0, bottomRight: 1.0)
                                            .fill(ColorConstants.Green600))
                                    .padding(.vertical, getRelativeHeight(13.0))
                                Spacer()
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(6.0),
                                           height: getRelativeWidth(6.0), alignment: .bottom)
                                    .background(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                               bottomLeft: 3.0, bottomRight: 3.0)
                                            .fill(ColorConstants.Green600))
                                    .padding(.vertical, getRelativeHeight(41.0))
                                Spacer()
                                Button(action: {}, label: {
                                    Image("img_interface")
                                })
                                .frame(width: getRelativeWidth(45.0),
                                       height: getRelativeWidth(45.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 22.75, topRight: 22.75,
                                                           bottomLeft: 22.75, bottomRight: 22.75)
                                        .fill(ColorConstants.Green600))
                                Spacer()
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(11.0),
                                           height: getRelativeWidth(11.0), alignment: .top)
                                    .background(RoundedCorners(topLeft: 5.5, topRight: 5.5,
                                                               bottomLeft: 5.5, bottomRight: 5.5)
                                            .fill(ColorConstants.Green600))
                                    .padding(.bottom, getRelativeHeight(36.0))
                            }
                            .frame(width: getRelativeWidth(122.0), height: getRelativeHeight(47.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(11.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(4.0), height: getRelativeWidth(4.0),
                                       alignment: .trailing)
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(ColorConstants.Green600))
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.horizontal, getRelativeWidth(21.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(2.0), height: getRelativeWidth(2.0),
                                       alignment: .leading)
                                .background(RoundedCorners(topLeft: 1.0, topRight: 1.0,
                                                           bottomLeft: 1.0, bottomRight: 1.0)
                                        .fill(ColorConstants.Green600))
                                .padding(.top, getRelativeHeight(6.0))
                                .padding(.horizontal, getRelativeWidth(39.0))
                        }
                        .frame(width: getRelativeWidth(122.0), height: getRelativeHeight(99.0),
                               alignment: .center)
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(2.0), height: getRelativeWidth(2.0),
                                   alignment: .bottom)
                            .background(RoundedCorners(topLeft: 1.0, topRight: 1.0, bottomLeft: 1.0,
                                                       bottomRight: 1.0)
                                    .fill(ColorConstants.Green600))
                            .padding(.vertical, getRelativeHeight(74.0))
                            .padding(.leading, getRelativeWidth(13.0))
                    }
                    .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(99.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(57.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                    Text(StringConstants.kLblSuccessfully)
                        .font(FontScheme.kGoogleSansBold(size: getRelativeHeight(32.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(41.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(54.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    Text(StringConstants.kMsgYahooYouHave)
                        .font(FontScheme.kGoogleSansMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(242.0), height: getRelativeHeight(41.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    Button(action: {
                        successViewModel.nextScreen = "MainView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblDone)
                                .font(FontScheme.kGoogleSansBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(17.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(326.0),
                                       height: getRelativeHeight(56.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 28.0, topRight: 28.0,
                                                           bottomLeft: 28.0, bottomRight: 28.0)
                                        .fill(ColorConstants.Green600))
                                .padding(.vertical, getRelativeHeight(51.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(56.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 28.0, topRight: 28.0, bottomLeft: 28.0,
                                               bottomRight: 28.0)
                            .fill(ColorConstants.Green600))
                    .padding(.vertical, getRelativeHeight(51.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: getRelativeWidth(374.0), height: getRelativeHeight(520.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 45.0, topRight: 45.0, bottomLeft: 45.0,
                                           bottomRight: 45.0)
                        .fill(ColorConstants.WhiteA700))
                .shadow(radius: 0)
                Group {
                    NavigationLink(destination: MainView(),
                                   tag: "MainView",
                                   selection: $successViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
