import SwiftUI

struct MainView: View {
    @StateObject var mainViewModel = MainViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack {
                    HStack {
                        HStack {
                            Image("img_leftside")
                                .resizable()
                                .frame(width: getRelativeWidth(54.0),
                                       height: getRelativeHeight(21.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .clipShape(Capsule())
                            Spacer()
                            Image("img_rightside")
                                .resizable()
                                .frame(width: getRelativeWidth(66.0),
                                       height: getRelativeHeight(11.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(5.0))
                                .padding(.bottom, getRelativeHeight(4.0))
                        }
                        .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(21.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(21.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(21.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(21.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        HStack {
                            ZStack(alignment: .bottomTrailing) {
                                Image("img_avatar")
                                    .resizable()
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeWidth(40.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(10.0),
                                           height: getRelativeWidth(10.0),
                                           alignment: .bottomTrailing)
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                               bottomLeft: 5.0, bottomRight: 5.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .Amber400,
                                                    ColorConstants
                                                        .Yellow900]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                    .padding(.top, getRelativeHeight(27.0))
                                    .padding(.leading, getRelativeWidth(27.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                                   alignment: .center)
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblWelcomeBack)
                                    .font(FontScheme
                                        .kSFProDisplaySemibold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray90099)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(80.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.trailing)
                                Text(StringConstants.kLblArianaGrinder)
                                    .font(FontScheme
                                        .kSFProDisplaySemibold(size: getRelativeHeight(15.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray903)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(96.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(96.0), height: getRelativeHeight(33.0),
                                   alignment: .center)
                            .padding(.leading, getRelativeWidth(10.0))
                        }
                        .frame(width: getRelativeWidth(146.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(20.0))
                        HStack {
                            ZStack(alignment: .trailing) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack {
                                        HStack {
                                            Image("img_leftcardbg")
                                                .resizable()
                                                .frame(width: getRelativeWidth(327.0),
                                                       height: getRelativeHeight(324.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .background(RoundedCorners(topLeft: 20.0,
                                                                           topRight: 20.0,
                                                                           bottomLeft: 20.0,
                                                                           bottomRight: 20.0))
                                            ZStack(alignment: .bottomTrailing) {
                                                Image("img_rightcard1bg")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(327.0),
                                                           height: getRelativeHeight(324.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .background(RoundedCorners(topLeft: 20.0,
                                                                               topRight: 20.0,
                                                                               bottomLeft: 20.0,
                                                                               bottomRight: 20.0))
                                                VStack(alignment: .leading, spacing: 0) {
                                                    Text(StringConstants.kMsgMyTripToTurk)
                                                        .font(FontScheme
                                                            .kSFProDisplayBold(size: getRelativeHeight(24.0)))
                                                        .fontWeight(.bold)
                                                        .foregroundColor(ColorConstants.WhiteA700)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(181.0),
                                                               height: getRelativeHeight(48.0),
                                                               alignment: .topLeading)
                                                        .shadow(color: ColorConstants.Black9003f,
                                                                radius: 14, x: 0, y: 4)
                                                        .padding(.trailing)
                                                    ZStack(alignment: .topLeading) {
                                                        HStack {
                                                            Image("img_autoravatar")
                                                                .resizable()
                                                                .frame(width: getRelativeWidth(17.0),
                                                                       height: getRelativeWidth(17.0),
                                                                       alignment: .center)
                                                                .scaledToFit()
                                                                .clipShape(Circle())
                                                                .clipShape(Circle())
                                                            Text(StringConstants.kLblJennyWilson)
                                                                .font(FontScheme
                                                                    .kSFProDisplayMedium(size: getRelativeHeight(13.0)))
                                                                .fontWeight(.medium)
                                                                .foregroundColor(ColorConstants
                                                                    .Gray100)
                                                                .minimumScaleFactor(0.5)
                                                                .multilineTextAlignment(.leading)
                                                                .frame(width: getRelativeWidth(78.0),
                                                                       height: getRelativeHeight(17.0),
                                                                       alignment: .topLeading)
                                                                .padding(.leading,
                                                                         getRelativeWidth(6.0))
                                                        }
                                                        .frame(width: getRelativeWidth(101.0),
                                                               height: getRelativeHeight(17.0),
                                                               alignment: .bottomLeading)
                                                        .padding(.top, getRelativeHeight(44.24))
                                                        .padding(.trailing, getRelativeWidth(164.0))
                                                        Text(StringConstants.kMsgMyTripToChin)
                                                            .font(FontScheme
                                                                .kSFProDisplayRegular(size: getRelativeHeight(14.0)))
                                                            .fontWeight(.regular)
                                                            .foregroundColor(ColorConstants
                                                                .WhiteA700)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: getRelativeWidth(265.0),
                                                                   height: getRelativeHeight(52.0),
                                                                   alignment: .topLeading)
                                                            .shadow(color: ColorConstants
                                                                .Black9003f,
                                                                radius: 14, x: 0, y: 4)
                                                            .padding(.bottom,
                                                                     getRelativeHeight(9.0))
                                                    }
                                                    .hideNavigationBar()
                                                    .frame(width: getRelativeWidth(265.0),
                                                           height: getRelativeHeight(61.0),
                                                           alignment: .leading)
                                                }
                                                .frame(width: getRelativeWidth(265.0),
                                                       height: getRelativeHeight(109.0),
                                                       alignment: .bottomTrailing)
                                                .padding(.top, getRelativeHeight(190.46))
                                                .padding(.leading, getRelativeWidth(24.0))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(33.0),
                                                   height: getRelativeHeight(324.0),
                                                   alignment: .center)
                                            .padding(.leading, getRelativeWidth(351.0))
                                        }
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(324.0), alignment: .center)
                                        Image("img_rightcard3bg")
                                            .resizable()
                                            .frame(width: getRelativeWidth(327.0),
                                                   height: getRelativeHeight(324.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 20.0,
                                                                       topRight: 20.0,
                                                                       bottomLeft: 20.0,
                                                                       bottomRight: 20.0))
                                            .padding(.leading, getRelativeWidth(645.0))
                                    }
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(324.0))
                                }
                                .padding(.top, getRelativeHeight(236.0))
                                .padding(.leading, getRelativeWidth(427.0))
                                VStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblNewArticles)
                                            .font(FontScheme
                                                .kSFProDisplaySemibold(size: getRelativeHeight(15.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray903)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(85.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.horizontal, getRelativeWidth(84.0))
                                        HStack {
                                            VStack {
                                                ScrollView(.horizontal, showsIndicators: false) {
                                                    HStack {
                                                        HStack {
                                                            ZStack(alignment: .leading) {
                                                                ZStack {}
                                                                    .hideNavigationBar()
                                                                    .frame(width: getRelativeWidth(76.0),
                                                                           height: getRelativeHeight(78.0),
                                                                           alignment: .leading)
                                                                    .shadow(color: ColorConstants
                                                                        .Gray8003f,
                                                                        radius: 14, x: 0, y: 4)
                                                                Image("img_leftcardsmall")
                                                                    .resizable()
                                                                    .frame(width: getRelativeWidth(76.0),
                                                                           height: getRelativeHeight(80.0),
                                                                           alignment: .center)
                                                                    .scaledToFit()
                                                                    .clipped()
                                                                    .background(RoundedCorners(topLeft: 12.0,
                                                                                               topRight: 12.0,
                                                                                               bottomLeft: 12.0,
                                                                                               bottomRight: 12.0))
                                                            }
                                                            .hideNavigationBar()
                                                            .frame(width: getRelativeWidth(76.0),
                                                                   height: getRelativeHeight(80.0),
                                                                   alignment: .center)
                                                            .shadow(color: ColorConstants.Gray8003f,
                                                                    radius: 14, x: 0, y: 4)
                                                            ZStack(alignment: .leading) {
                                                                ZStack {}
                                                                    .hideNavigationBar()
                                                                    .frame(width: getRelativeWidth(76.0),
                                                                           height: getRelativeHeight(86.0),
                                                                           alignment: .leading)
                                                                    .shadow(color: ColorConstants
                                                                        .Gray8003f,
                                                                        radius: 14, x: 0, y: 4)
                                                                ZStack(alignment: .bottomLeading) {
                                                                    Image("img_maincardsmall")
                                                                        .resizable()
                                                                        .frame(width: getRelativeWidth(76.0),
                                                                               height: getRelativeHeight(88.0),
                                                                               alignment: .center)
                                                                        .scaledToFit()
                                                                        .clipped()
                                                                        .background(RoundedCorners(topLeft: 12.0,
                                                                                                   topRight: 12.0,
                                                                                                   bottomLeft: 12.0,
                                                                                                   bottomRight: 12.0))
                                                                    Text(StringConstants.kLblAfrica)
                                                                        .font(FontScheme
                                                                            .kSFProTextBold(size: getRelativeHeight(15.0)))
                                                                        .fontWeight(.bold)
                                                                        .foregroundColor(ColorConstants
                                                                            .WhiteA700)
                                                                        .minimumScaleFactor(0.5)
                                                                        .multilineTextAlignment(.leading)
                                                                        .frame(width: getRelativeWidth(46.0),
                                                                               height: getRelativeHeight(18.0),
                                                                               alignment: .topLeading)
                                                                        .padding(.top,
                                                                                 getRelativeHeight(57.24))
                                                                        .padding(.trailing,
                                                                                 getRelativeWidth(20.0))
                                                                }
                                                                .hideNavigationBar()
                                                                .frame(width: getRelativeWidth(76.0),
                                                                       height: getRelativeHeight(88.0),
                                                                       alignment: .leading)
                                                            }
                                                            .hideNavigationBar()
                                                            .frame(width: getRelativeWidth(76.0),
                                                                   height: getRelativeHeight(88.0),
                                                                   alignment: .center)
                                                            .padding(.leading,
                                                                     getRelativeWidth(12.0))
                                                        }
                                                        .frame(width: getRelativeWidth(164.0),
                                                               height: getRelativeHeight(88.0),
                                                               alignment: .center)
                                                        HStack {
                                                            ZStack(alignment: .leading) {
                                                                ZStack {}
                                                                    .hideNavigationBar()
                                                                    .frame(width: getRelativeWidth(76.0),
                                                                           height: getRelativeHeight(78.0),
                                                                           alignment: .leading)
                                                                    .shadow(color: ColorConstants
                                                                        .Gray8003f,
                                                                        radius: 14, x: 0, y: 4)
                                                                ZStack(alignment: .bottomLeading) {
                                                                    Image("img_right4cardsm")
                                                                        .resizable()
                                                                        .frame(width: getRelativeWidth(76.0),
                                                                               height: getRelativeHeight(80.0),
                                                                               alignment: .center)
                                                                        .scaledToFit()
                                                                        .clipped()
                                                                        .background(RoundedCorners(topLeft: 12.0,
                                                                                                   topRight: 12.0,
                                                                                                   bottomLeft: 12.0,
                                                                                                   bottomRight: 12.0))
                                                                    Text(StringConstants.kLblEgypt)
                                                                        .font(FontScheme
                                                                            .kSFProTextSemibold(size: getRelativeHeight(15.0)))
                                                                        .fontWeight(.semibold)
                                                                        .foregroundColor(ColorConstants
                                                                            .WhiteA700)
                                                                        .minimumScaleFactor(0.5)
                                                                        .multilineTextAlignment(.leading)
                                                                        .frame(width: getRelativeWidth(43.0),
                                                                               height: getRelativeHeight(18.0),
                                                                               alignment: .topLeading)
                                                                        .padding(.top,
                                                                                 getRelativeHeight(51.12))
                                                                        .padding(.trailing,
                                                                                 getRelativeWidth(23.0))
                                                                }
                                                                .hideNavigationBar()
                                                                .frame(width: getRelativeWidth(76.0),
                                                                       height: getRelativeHeight(80.0),
                                                                       alignment: .leading)
                                                            }
                                                            .hideNavigationBar()
                                                            .frame(width: getRelativeWidth(76.0),
                                                                   height: getRelativeHeight(80.0),
                                                                   alignment: .center)
                                                            .shadow(color: ColorConstants.Gray8003f,
                                                                    radius: 14, x: 0, y: 4)
                                                            ZStack(alignment: .leading) {
                                                                ZStack {}
                                                                    .hideNavigationBar()
                                                                    .frame(width: getRelativeWidth(76.0),
                                                                           height: getRelativeHeight(78.0),
                                                                           alignment: .leading)
                                                                    .shadow(color: ColorConstants
                                                                        .Gray8003f,
                                                                        radius: 14, x: 0, y: 4)
                                                                Image("img_right5cardsm")
                                                                    .resizable()
                                                                    .frame(width: getRelativeWidth(76.0),
                                                                           height: getRelativeHeight(80.0),
                                                                           alignment: .center)
                                                                    .scaledToFit()
                                                                    .clipped()
                                                                    .background(RoundedCorners(topLeft: 12.0,
                                                                                               topRight: 12.0,
                                                                                               bottomLeft: 12.0,
                                                                                               bottomRight: 12.0))
                                                            }
                                                            .hideNavigationBar()
                                                            .frame(width: getRelativeWidth(76.0),
                                                                   height: getRelativeHeight(80.0),
                                                                   alignment: .center)
                                                            .shadow(color: ColorConstants.Gray8003f,
                                                                    radius: 14, x: 0, y: 4)
                                                            .padding(.leading,
                                                                     getRelativeWidth(12.0))
                                                        }
                                                        .frame(width: getRelativeWidth(164.0),
                                                               height: getRelativeHeight(80.0),
                                                               alignment: .center)
                                                        .padding(.leading, getRelativeWidth(276.0))
                                                    }
                                                    .frame(width: getRelativeWidth(76.0),
                                                           height: getRelativeHeight(88.0),
                                                           alignment: .leading)
                                                    .shadow(color: ColorConstants.Gray8003f,
                                                            radius: 14, x: 0, y: 4)
                                                }
                                                .padding(.horizontal, getRelativeWidth(4.0))
                                            }
                                            .frame(width: getRelativeWidth(84.0),
                                                   height: getRelativeHeight(94.0),
                                                   alignment: .center)
                                            .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                                    bottomLeft: 16.0,
                                                                    bottomRight: 16.0)
                                                    .stroke(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .OrangeA20000,
                                                                ColorConstants
                                                                    .OrangeA200]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing),
                                                            lineWidth: 1))
                                            .background(RoundedCorners(topLeft: 16.0,
                                                                       topRight: 16.0,
                                                                       bottomLeft: 16.0,
                                                                       bottomRight: 16.0)
                                                    .fill(Color.clear.opacity(0.7)))
                                            HStack(spacing: 0) {
                                                ScrollView(.horizontal, showsIndicators: false) {
                                                    LazyHStack {
                                                        ForEach(0 ... 2, id: \.self) { index in
                                                            RightCardSmCell()
                                                        }
                                                    }
                                                }
                                            }
                                            .frame(width: getRelativeWidth(252.0),
                                                   alignment: .center)
                                            .padding(.top, getRelativeHeight(6.0))
                                            .padding(.bottom, getRelativeHeight(7.0))
                                            .padding(.leading, getRelativeWidth(8.0))
                                        }
                                        .frame(width: getRelativeWidth(344.0),
                                               height: getRelativeHeight(94.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(6.0))
                                        .padding(.horizontal, getRelativeWidth(84.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(118.0), alignment: .leading)
                                    HStack {
                                        HStack {
                                            Spacer()
                                            Image("img_search")
                                                .resizable()
                                                .frame(width: getRelativeWidth(16.0),
                                                       height: getRelativeHeight(15.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.vertical, getRelativeHeight(13.0))
                                                .padding(.leading, getRelativeWidth(13.0))
                                                .padding(.trailing, getRelativeWidth(7.0))
                                            TextField(StringConstants.kMsgSearchCountry,
                                                      text: $mainViewModel.search1)
                                                .font(FontScheme
                                                    .kSFProTextMedium(size: getRelativeHeight(15.0)))
                                                .foregroundColor(ColorConstants.DeepOrangeA100)
                                                .padding()
                                        }
                                        .frame(width: getRelativeWidth(281.0),
                                               height: getRelativeHeight(43.0), alignment: .top)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0)
                                                .fill(ColorConstants.Orange51))
                                        .padding(.bottom, getRelativeHeight(5.0))
                                        Image("img_filter")
                                            .resizable()
                                            .frame(width: getRelativeWidth(50.0),
                                                   height: getRelativeHeight(44.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(4.0))
                                            .padding(.leading, getRelativeWidth(10.0))
                                    }
                                    .frame(width: getRelativeWidth(344.0),
                                           height: getRelativeHeight(48.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(15.0))
                                    .padding(.horizontal, getRelativeWidth(84.0))
                                    ZStack(alignment: .bottomLeading) {
                                        Image("img_maincardbg")
                                            .resizable()
                                            .frame(width: getRelativeWidth(327.0),
                                                   height: getRelativeHeight(366.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 24.0,
                                                                       topRight: 24.0,
                                                                       bottomLeft: 24.0,
                                                                       bottomRight: 24.0))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kMsgTravelToAfric)
                                                .font(FontScheme
                                                    .kSFProDisplayBold(size: getRelativeHeight(24.0)))
                                                .fontWeight(.bold)
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(164.0),
                                                       height: getRelativeHeight(28.0),
                                                       alignment: .topLeading)
                                                .shadow(color: ColorConstants.Black9003f,
                                                        radius: 14, x: 0, y: 4)
                                                .padding(.trailing)
                                            Text(StringConstants.kMsgMyTripToChin)
                                                .font(FontScheme
                                                    .kSFProDisplayRegular(size: getRelativeHeight(14.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.WhiteA700E5)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(245.0),
                                                       height: getRelativeHeight(37.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(6.0))
                                            HStack {
                                                Image("img_avatar")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(17.0),
                                                           height: getRelativeWidth(17.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipShape(Circle())
                                                    .clipShape(Circle())
                                                Text(StringConstants.kMsgLeslieAlexande)
                                                    .font(FontScheme
                                                        .kSFProDisplayMedium(size: getRelativeHeight(13.0)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Gray100)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(95.0),
                                                           height: getRelativeHeight(16.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(6.0))
                                            }
                                            .frame(width: getRelativeWidth(118.0),
                                                   height: getRelativeHeight(17.0),
                                                   alignment: .leading)
                                            .padding(.top, getRelativeHeight(10.0))
                                            .padding(.trailing, getRelativeWidth(10.0))
                                        }
                                        .frame(width: getRelativeWidth(245.0),
                                               height: getRelativeHeight(99.0),
                                               alignment: .bottomLeading)
                                        .padding(.top, getRelativeHeight(257.0))
                                        .padding(.trailing, getRelativeWidth(58.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(380.0), alignment: .leading)
                                    .shadow(color: ColorConstants.Black90019, radius: 14, x: 0,
                                            y: 14)
                                    .padding(.top, getRelativeHeight(14.0))
                                    .padding(.horizontal, getRelativeWidth(88.0))
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(578.0), alignment: .trailing)
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(578.0), alignment: .center)
                            Spacer()
                            ScrollView(.horizontal, showsIndicators: false) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("img_rightcard2bg")
                                        .resizable()
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(324.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                                   bottomLeft: 20.0,
                                                                   bottomRight: 20.0))
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kMsgCorduroySunset)
                                            .font(FontScheme
                                                .kSFProDisplayBold(size: getRelativeHeight(24.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(260.0),
                                                   height: getRelativeHeight(28.0),
                                                   alignment: .topLeading)
                                            .shadow(color: ColorConstants.Black9003f, radius: 14,
                                                    x: 0, y: 4)
                                            .padding(.trailing)
                                        Text(StringConstants.kMsgMyTripToChin)
                                            .font(FontScheme
                                                .kSFProDisplayRegular(size: getRelativeHeight(14.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(265.0),
                                                   height: getRelativeHeight(36.0),
                                                   alignment: .topLeading)
                                            .shadow(color: ColorConstants.Black9003f, radius: 14,
                                                    x: 0, y: 4)
                                            .padding(.top, getRelativeHeight(6.0))
                                        HStack {
                                            Image("img_autoravatar_17x17")
                                                .resizable()
                                                .frame(width: getRelativeWidth(17.0),
                                                       height: getRelativeWidth(17.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipShape(Circle())
                                                .clipShape(Circle())
                                            Text(StringConstants.kMsgDarleneRoberts)
                                                .font(FontScheme
                                                    .kSFProDisplayMedium(size: getRelativeHeight(13.0)))
                                                .fontWeight(.medium)
                                                .foregroundColor(ColorConstants.Gray100)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(107.0),
                                                       height: getRelativeHeight(17.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(6.0))
                                        }
                                        .frame(width: getRelativeWidth(130.0),
                                               height: getRelativeHeight(17.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(12.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                    }
                                    .frame(width: getRelativeWidth(265.0),
                                           height: getRelativeHeight(99.0),
                                           alignment: .bottomLeading)
                                    .padding(.top, getRelativeHeight(201.0))
                                    .padding(.trailing, getRelativeWidth(38.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(324.0), alignment: .leading)
                            }
                            .padding(.vertical, getRelativeHeight(236.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(578.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(16.0))
                        ZStack(alignment: .topLeading) {
                            HStack {
                                HStack {
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(101.0),
                                               height: getRelativeHeight(37.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 18.5, topRight: 18.5,
                                                                   bottomLeft: 18.5,
                                                                   bottomRight: 18.5)
                                                .fill(ColorConstants.WhiteA700))
                                        .shadow(color: ColorConstants.Gray9003f, radius: 39, x: 0,
                                                y: 3)
                                    Image("img_star")
                                        .resizable()
                                        .frame(width: getRelativeWidth(21.0),
                                               height: getRelativeHeight(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(42.0))
                                }
                                .frame(width: getRelativeWidth(164.0),
                                       height: getRelativeHeight(37.0), alignment: .center)
                                .padding(.leading, getRelativeWidth(10.0))
                                Image("img_profile")
                                    .resizable()
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeHeight(21.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(91.0))
                                    .padding(.trailing, getRelativeWidth(43.0))
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(56.0),
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 28.0, topRight: 28.0,
                                                       bottomLeft: 28.0, bottomRight: 28.0)
                                    .fill(ColorConstants.Yellow902))
                            .shadow(color: ColorConstants.RedA70028, radius: 19, x: -2, y: 10)
                            .padding(.bottom, getRelativeHeight(79.0))
                            .padding(.trailing, getRelativeWidth(34.0))
                            Image("img_discovery")
                                .resizable()
                                .frame(width: getRelativeWidth(21.0),
                                       height: getRelativeWidth(21.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(97.0))
                                .padding(.trailing, getRelativeWidth(290.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(175.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 39.0, topRight: 39.0, bottomLeft: 39.0,
                                                   bottomRight: 39.0)
                                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                            .Amber400,
                                        ColorConstants
                                            .Yellow901]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing)))
                        .padding(.horizontal, getRelativeWidth(10.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(809.0),
                           alignment: .leading)
                    .background(ColorConstants.Orange50)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(809.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(15.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.Orange50)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Orange50)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
