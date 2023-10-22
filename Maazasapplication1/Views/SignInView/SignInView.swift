import SwiftUI

struct SignInView: View {
    @StateObject var signInViewModel = SignInViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ZStack(alignment: .bottomLeading) {
                        Image("img_statusbar")
                            .resizable()
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(13.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(799.0))
                            .padding(.trailing, getRelativeWidth(32.0))
                        VStack {
                            Text(StringConstants.kLblWellcome)
                                .font(FontScheme.kGoogleSansBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(63.0))
                            Text(StringConstants.kLblSignIn)
                                .font(FontScheme.kGoogleSansBold(size: getRelativeHeight(40.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(126.0),
                                       height: getRelativeHeight(51.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(8.0))
                                .padding(.horizontal, getRelativeWidth(63.0))
                            Text(StringConstants.kMsgPleaseFillYou)
                                .font(FontScheme.kGoogleSansMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray800)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(179.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(7.0))
                                .padding(.horizontal, getRelativeWidth(63.0))
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblEmail)
                                            .font(FontScheme
                                                .kGoogleSansRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(28.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing)
                                        Text(StringConstants.kMsgAccountGmailC)
                                            .font(FontScheme
                                                .kGoogleSansBold(size: getRelativeHeight(16.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(159.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(12.0))
                                    }
                                    .frame(width: getRelativeWidth(159.0),
                                           height: getRelativeHeight(49.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(25.0))
                                    .padding(.bottom, getRelativeHeight(24.0))
                                    .padding(.leading, getRelativeWidth(24.0))
                                    Spacer()
                                    Image("img_mail")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(16.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(42.0))
                                        .padding(.trailing, getRelativeWidth(26.0))
                                }
                                .frame(width: getRelativeWidth(326.0),
                                       height: getRelativeHeight(100.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.Gray200))
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblPassword)
                                            .font(FontScheme
                                                .kGoogleSansRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(51.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing)
                                        Image("img_inputstatus")
                                            .resizable()
                                            .frame(width: getRelativeWidth(90.0),
                                                   height: getRelativeHeight(6.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(19.0))
                                            .padding(.trailing, getRelativeWidth(10.0))
                                    }
                                    .frame(width: getRelativeWidth(242.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(25.0))
                                    .padding(.bottom, getRelativeHeight(24.0))
                                    .padding(.leading, getRelativeWidth(24.0))
                                    Image("img_lock")
                                        .resizable()
                                        .frame(width: getRelativeWidth(15.0),
                                               height: getRelativeHeight(21.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(39.0))
                                        .padding(.leading, getRelativeWidth(16.0))
                                }
                                .frame(width: getRelativeWidth(326.0),
                                       height: getRelativeHeight(100.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.Gray200))
                                .padding(.top, getRelativeHeight(4.0))
                            }
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(204.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 24.0, topRight: 24.0,
                                                       bottomLeft: 24.0, bottomRight: 24.0))
                            .padding(.top, getRelativeHeight(107.0))
                            Button(action: {
                                signInViewModel.nextScreen = "SignUpView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblSignInNow)
                                        .font(FontScheme
                                            .kGoogleSansBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(17.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(200.0),
                                               height: getRelativeHeight(56.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 28.0, topRight: 28.0,
                                                                   bottomLeft: 28.0,
                                                                   bottomRight: 28.0)
                                                .fill(ColorConstants.IndigoA700))
                                        .padding(.top, getRelativeHeight(105.0))
                                        .padding(.horizontal, getRelativeWidth(63.0))
                                }
                            })
                            .frame(width: getRelativeWidth(200.0), height: getRelativeHeight(56.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 28.0, topRight: 28.0,
                                                       bottomLeft: 28.0, bottomRight: 28.0)
                                    .fill(ColorConstants.IndigoA700))
                            .padding(.top, getRelativeHeight(105.0))
                            .padding(.horizontal, getRelativeWidth(63.0))
                            VStack {
                                Text(StringConstants.kLblSignUp)
                                    .font(FontScheme.kGoogleSansBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(57.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .onTapGesture {
                                        signInViewModel.nextScreen = "FillInfoView"
                                    }
                            }
                            .frame(width: getRelativeWidth(57.0), height: getRelativeHeight(21.0),
                                   alignment: .center)
                            .clipShape(Capsule())
                            .padding(.vertical, getRelativeHeight(34.0))
                            .padding(.horizontal, getRelativeWidth(63.0))
                        }
                        .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(655.0),
                               alignment: .bottomLeading)
                        .background(RoundedCorners(topLeft: 24.0, topRight: 24.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0))
                        .padding(.top, getRelativeHeight(141.0))
                        .padding(.trailing, getRelativeWidth(32.0))
                        Image("img_ellipse2005")
                            .resizable()
                            .frame(width: getRelativeWidth(272.0), height: getRelativeHeight(326.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(518.0))
                            .padding(.leading, getRelativeWidth(102.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(374.0), height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0))
                    .padding(.leading, getRelativeWidth(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SignUpView(),
                                   tag: "SignUpView",
                                   selection: $signInViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FillInfoView(),
                                   tag: "FillInfoView",
                                   selection: $signInViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            signInViewModel.nextScreen = "SignUpView"
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
