import SwiftUI

struct SignUpView: View {
    @StateObject var signUpViewModel = SignUpViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
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
                            Text(StringConstants.kLblChooseYour)
                                .font(FontScheme.kGoogleSansBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(123.0),
                                       height: getRelativeHeight(26.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(63.0))
                            Text(StringConstants.kLblSignIn)
                                .font(FontScheme.kGoogleSansBold(size: getRelativeHeight(40.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(126.0),
                                       height: getRelativeHeight(51.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(6.0))
                                .padding(.horizontal, getRelativeWidth(63.0))
                            Text(StringConstants.kMsgSelectLoginMe)
                                .font(FontScheme.kGoogleSansMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray800)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(130.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(8.0))
                                .padding(.horizontal, getRelativeWidth(63.0))
                            HStack {
                                HStack {
                                    Button(action: {}, label: {
                                        Image("img_frame1")
                                    })
                                    .frame(width: getRelativeWidth(56.0),
                                           height: getRelativeWidth(56.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 28.0, topRight: 28.0,
                                                               bottomLeft: 28.0, bottomRight: 28.0)
                                            .fill(ColorConstants.IndigoA700))
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblUse)
                                            .font(FontScheme
                                                .kGoogleSansRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.IndigoA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(20.0),
                                                   height: getRelativeHeight(16.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing)
                                        Text(StringConstants.kLblFacebook)
                                            .font(FontScheme
                                                .kGoogleSansBold(size: getRelativeHeight(16.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.IndigoA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(75.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(7.0))
                                    }
                                    .frame(width: getRelativeWidth(75.0),
                                           height: getRelativeHeight(44.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(24.0))
                                }
                                .frame(width: getRelativeWidth(155.0),
                                       height: getRelativeHeight(56.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(24.0))
                                .padding(.leading, getRelativeWidth(24.0))
                                Spacer()
                                VStack {
                                    VStack {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(12.0),
                                                   height: getRelativeWidth(12.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                                       bottomLeft: 6.0,
                                                                       bottomRight: 6.0)
                                                    .fill(ColorConstants.IndigoA700))
                                            .padding(.horizontal, getRelativeWidth(3.0))
                                    }
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeWidth(19.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 9.75, topRight: 9.75,
                                                               bottomLeft: 9.75, bottomRight: 9.75)
                                            .fill(ColorConstants.IndigoA700A2))
                                    .padding(.all, getRelativeWidth(18.0))
                                    .padding(.vertical, getRelativeHeight(18.0))
                                    .padding(.horizontal, getRelativeWidth(18.0))
                                }
                                .frame(width: getRelativeWidth(56.0),
                                       height: getRelativeWidth(56.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 28.0, topRight: 28.0,
                                                           bottomLeft: 28.0, bottomRight: 28.0)
                                        .fill(ColorConstants.BlueA40019))
                                .padding(.vertical, getRelativeHeight(24.0))
                                .padding(.trailing, getRelativeWidth(24.0))
                            }
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(104.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 52.0, topRight: 52.0, bottomLeft: 52.0,
                                                    bottomRight: 52.0)
                                    .stroke(ColorConstants.IndigoA700,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 52.0, topRight: 52.0,
                                                       bottomLeft: 52.0, bottomRight: 52.0)
                                    .fill(ColorConstants.BlueA40019))
                            .padding(.top, getRelativeHeight(77.0))
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 1, id: \.self) { index in
                                            CardCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(326.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(12.0))
                            Button(action: {
                                signUpViewModel.isVerificationViewShow = true
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblNext)
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
                                        .padding(.top, getRelativeHeight(75.0))
                                        .padding(.horizontal, getRelativeWidth(63.0))
                                }
                            })
                            .frame(width: getRelativeWidth(200.0), height: getRelativeHeight(56.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 28.0, topRight: 28.0,
                                                       bottomLeft: 28.0, bottomRight: 28.0)
                                    .fill(ColorConstants.IndigoA700))
                            .padding(.top, getRelativeHeight(75.0))
                            .padding(.horizontal, getRelativeWidth(63.0))
                        }
                        .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(655.0),
                               alignment: .bottomLeading)
                        .background(RoundedCorners(topLeft: 24.0, topRight: 24.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0))
                        .padding(.top, getRelativeHeight(141.0))
                        .padding(.trailing, getRelativeWidth(32.0))
                        Image("img_ellipse2005_326x272")
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
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                           bottomRight: 16.0)
                        .fill(ColorConstants.WhiteA700))
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            if signUpViewModel.isVerificationViewShow {
                BottomSheetView(isOpen: $signUpViewModel.isVerificationViewShow, content: {
                    VerificationView(verificationViewModel: VerificationViewModel(_isOpen: $signUpViewModel
                            .isVerificationViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
