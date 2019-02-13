;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


{ ;countries/area
	:*:asia::Asia
	:*:africa::Africa	
	:*:safrica::South Africa
	:*:agder::Agder
	:*:america::America
	:*:arendal::Arendal
	:*:argentina::Argentina
	:*:agt::Argentina
	:*:australia::Australia
	:*:astl::Australia
	:*:austria::Austria
	:*:belgium::Belgium
	:*:brazil::Brazil
	:*:canad::Canad
	:*:cnd::Canada
	:*:chile::Chile
	:*:chilian::Chilian
	:*:china::China
	::cn::China
	:*:chine::Chine
	:*:colombia::Colombia
	:*:croatia::Croatia
	:*:denmark::Denmark
	:*:dk::Denmark
	:*:denish::Denish
	:*:dubai::Dubai
	:*:egypt::Egypt
	:*:english::English
	:*:england::England
	:*:estonia::Estonia
	:*:europ::Europ
	:*:finland::Finland
	:*:france::France
	:*:french::French
	:*:german::German
	:*:gmn::Germany
	:*:greece::Greece
	:*:greek::Greek
	:*:grimstad::Grimstad
	:*:hungary::Hungary
	::hk::HK
	::hong kong::Hong Kong
	:*:iceland::Iceland
	:*:india::India
	:*:indonesi::Indonesi
	:*:ireland::Ireland
	:*:irland::Irland
	:*:ital::Ital
	:*:japan::Japan
	::jp::Japan
	:*:jordan::Jordan
	:*:kristiansand::Kristiansand
	:*:latvia::Latvia
	:*:lithuania::Lithuania
	:*:london::London
	:*:malaysia::Malaysia
	:*:mlay::Malaysia
	:*:mexic::Mexic
	:*:miami::Miami
	:*:netherland::Netherlands
	:*:ntl::Netherlands
	:*:nz::New Zealand
	:*:norw::Norw
	:*:nw::Norway
	:*:nordic::Nordic
	:*:oslo::Oslo
	:*:pakistan::Pakistan
	::peru::Peru
	:*:philippine::Philippine
	:*:plp::Philippines
	:*:poland::Poland
	::pl::Poland
	:*:portugal::Portugal
	:*:romania::Romania
	:*:rmn::Romania
	::rs::Russia
	:*:scotl::Scotland
	:*:serbia::Serbia
	:*:singapore::Singapore
	::sgp::Singapore
	:*:slovenia::Slovenia
	:*:snapdragon::Snapdragon
	:*:spain::Spain
	:*:storgaten::Storgaten
	:*:swed::Swed
	:*:switz::Switzerland
	:*:taiwan::Taiwan
	::tw::Taiwan
	:*:thailand::Thailand
	:*:tld::Thailand
	:*:turk::Turk
	::tk::Turkey
	:*:ukrain::Ukraine
	:*:venezuela::Venezuela
	:*:vietnam::Vietnam
	::uk::UK
	::usa::USA
}

{ ; Month, Weekdays
	:*:january::January
	:*:february::February
	:*:march::March
	:*:april::April
	:*:june::June
	:*:july::July
	:*:august::August
	:*:september::September
	:*:october::October
	:*:november::November
	:*:december::December
	:*:monday::Monday
	:*:1wd::Monday
	:*:tuesday::Tuesday
	:*:2wd::Tuesday
	:*:wednesday::Wednesday
	:*:3wd::Wednesday
	:*:thursday::Thursday
	:*:4wd::Thursday
	:*:friday::Friday
	:*:5wd::Friday
	:*:saturday::Saturday
	:*:6wd::Saturday
	:*:sunday::Sunday
	:*:7wd::Sunday
	:*:christmas::Christmas
}

{ ;General abbreviations
	:*:br,::
	Send Best Regards, {Enter}Dawei
	return
	:*:asap::as soon as possible
	:*:btw::by the way
	::sm::social media
	:*:ok::OK
	:*:stsc::statistics
	:*:daveno::davecallnor@gmail.com
	:*:daveli::davecall@live.cn
	:*:daveho::davecall@hotmail.com
	:*:daweic::dawei.zhu@confirmit.com
	:*:lpass::da07031184NORDIC
	:*:lppass::da45OOLKiuofg07pOIDl$
	:*:cpass::Daf354{#}Dg682
	:*:mpass::da07031184
	:*:wpass::5715024762
	::sth::something
	::stm::sometimes
	::pdt::personal development time
	::-.::→
	::u::you
	::idk::I don't know
	::youll::you'll
	:*:youre::you're
	::ty::thank you
	::thx::thanks
	::pls::please
	::ill::I'll
	::ive::I've
	::i::I
	::im::I'm
	:c:id::I'd
	:*:itd::it'd
	:*:wed::we'd
	:*:isnt::isn't
	:*:arent::aren't
	:*:wasnt::wasn't
	:*:werent::weren't
	:*:wont::won't
	:*:wouldnt::wouldn't
	:*:cant::can't
	:*:couldnt::couldn't
	:*:shouldnt::shouldn't
	:*:havent::haven't
	:*:hasnt::hasn't
	:*:hadnt::hadn't
	:*:dont::don't
	:*:doesnt::doesn't
	:*:didnt::didn't
	:*:thats::that's
	:*?:``o::ø
	:*?:``O::Ø
	:*?:``e::æ
	:*?:``E::Æ
	:*?:``a::å
	:*?:``A::Å
	:*?:celsius::℃
	:*:(::
		SetTitleMatchMode 2 ;only match part of the file name
		if WinActive(" - Excel") ;when the active Window is Excel
			Send (
		if !WinActive(" - Excel")
			Send (){Left 1}
		return
	:*:[::
		SetTitleMatchMode 2 ;only match part of the file name
		if WinActive(" - Excel") ;when the active Window is Excel
			Send [
		if !WinActive(" - Excel")
			Send []{Left 1}
		return
	:*:{::
		SetTitleMatchMode 2 ;only match part of the file name
		if WinActive(" - Excel") ;when the active Window is Excel
			Send {{}
		if !WinActive(" - Excel")
			Send {{}{}}{Left 1}
		return
	:*?:"::
		SetTitleMatchMode 2 ;only match part of the file name
		if WinActive(" - Excel") ;when the active Window is Excel
			Send "
		if !WinActive(" - Excel")
			Send ""{Left 1}
		return
	::cs::customer service
	::ctg::category
	::ctgs::categories
	::sctg::sub-category
	::sctgs::sub-categories
	::atb::attribute
	::atbs::attributes
	:*:uat::UAT
	:*:qaed::QAed
	::eg::e.g.
}

{ ;features/hardware
	::3g::3G
	::4g::4G
	::4k::4K
	:*:oled::OLED
	:*:bq::build quality
	::bt::Bluetooth
	:*:hdtv::HDTV
	:*:ccd::CCD
	:*:cpu::CPU
	:*:dns::DNS
	:*:email::Email
	:*:gps::GPS
	:*:gpu::GPU
	:*?:ghz::GHz
	:*:hifi::Hi-Fi
	::lte::LTE
	:*:volte::VoLTE
	:*:led::LED
	:*:mms::MMS
	:*:nfc::NFC
	:*:otg::OTG
	:*:pdf::PDF
	::sim::SIM
	::sd::SD
	:*:microsd::MicroSD
	:*:ssd::SSD
	::tv::TV
	::ui::UI
	:*:usb::USB
	:*:sms::SMS
	:*:ssd::SSD
	:*:wifi::Wi-Fi
	:*:wf::Wi-Fi
	::fp::fingerprint
	:*:fps::FPS
}

{ ;Brands
	:*:acer::Acer
	:*:adobe::Adobe
	:*:ahk::AutoHotkey
	:*:android::Android
	:*:amazon::Amazon
	::amd::AMD
	:*:asus::ASUS
	:*:at&t::AT&T
	::benq::BenQ
	::bb::BlackBerry
	:*:bbc::BBC
	:*:bosch::Bosch
	:*:bmw::BMW
	:*:bravia::Bravia
	::canon::Canon
	::ces::CES
	:*:chrome::Chrome
	:*:cortana::Cortana
	:*:cocacola::Coca-Cola
	:*:confirmit::Confirmit
	::dell::Dell
	:*:disney::Disney
	:*:dlink::D-Link
	:*:dropbox::Dropbox
	:*:dualshock::DualShock
	:*:electrolux::Electrolux
	::excel::Excel
	:*:engadget::Engadget
	:*:facebook::Facebook
	:*:facetime::FaceTime
	:*:fb::Facebook
	:*:ff::Firefox
	::fuji::Fuji
	:*:galaxy::Galaxy
	:*:glx::Galaxy
	:*:gigabyte::Gigabyte
	:*:gmail::Gmail
	:*:google::Google
	:*:gg::Google
	:*:gopro::GoPro
	:*:honda::Honda
	:*:hdr::HDR
	::hp::HP
	:*:htc::HTC
	:*:huawei::Huawei
	:*:ibm::IBM
	:*:ios::iOS
	:*:ipad::iPad
	:*:iphone::iPhone
	:*:icloud::iCloud
	:*:ikea::IKEA
	:*:internet::Internet
	:*:instagram::Instagram
	:*:imac::iMac
	:*:imessage::iMessage
	:*:itunes::iTunes
	:*:jpt::JP & Thygesen
	:*:kfc::KFC
	:*:kingston::Kingston
	:*:lenovo::Lenovo
	:*:lastpass::LastPass
	::lg::LG
	:*:logitech::Logitech
	:*:linkedin::LinkedIn
	:*:linksys::Linksys
	:*:lumia::Lumia
	:*:mcafee::McAfee
	:*:mcdonald::McDonald's
	:*:mediatek::MediaTek
	:*:microsoft::Microsoft
	::ms::Microsoft
	:*:motorola::Motorola
	:*:macbook::MacBook
	:*:mwc::MWC
	:*:nasa::NASA
	:*:netgear::Netgear
	:*:nexus::Nexus
	:*:netflix::Netflix
	:*:nintendo::Nintendo
	:*:nike::Nike
	:*:nikon::Nikon
	:*:nissan::Nissan
	:*:nokia::Nokia
	:*:norton::Norton
	:*:npp::
		SendRaw Notepad++ ;using SendRaw because of + sign
	:*:nvidia::NVIDIA
	::oppo::Oppo
	:*:olympus::Olympus
	:*:oneplus::OnePlus
	:*:oa::OpenAir
	:*:openair::OpenAir
	:*:oracle::Oracle
	:*:panasonic::Panasonic
	:*:pentax::Pentax
	:*:philips::Philips
	:*:photoshop::Photoshop
	:*:playstation::PlayStation
	:*:pinterest::Pinterest
	::ps::PS
	:*:onenote::OneNote
	:*:qualcomm::Qualcomm
	:*:sandisk::SanDisk
	:*:samsung::Samsung
	::ss::Samsung
	:*:seagate::Seagate
	:*:sennheiser::Sennheiser 
	:*:sina::Sina
	:*:snapchat::Snapchat
	:*:sony::Sony
	:*:spotify::Spotify
	:*:skype::Skype
	:*:starbucks::Starbucks
	:*:swiftkey::SwiftKey
	:*:symantec::Symantec
	:*:tencent::Tencent
	:*:tesla::Tesla
	:*:thinkpad::ThinkPad
	:*:toshiba::Toshiba
	:*:toyota::Toyota
	:*:tm::Total Commander
	:*:twitter::Twitter
	:*:tt::Twitter
	:*:tmobile::T-Mobile
	:*:vba::VBA
	:*:vodafone::Vodafone
	:*:volvo::Volvo
	:*:vv::Volvo
	:*:verizon::Verizon
	:*:vaio::VAIO
	:*:viber::Viber
	:*:visa::Visa
	:*:visma::Visma
	:*:walkman::Walkman
	:*:wechat::WeChat
	:*:weibo::Weibo
	:*:whatsapp::WhatsApp
	:*:whirlpool::Whirlpool
	:*:windows::Windows
	:*:wii::Wii
	:*:xperia::Xperia
	:*:xbox::Xbox
	:*:yamaha::Yamaha
	:*:yt::YouTube
	:*:yahoo::Yahoo
	:*:yh::Yahoo	
}

{ ;Names
	::gard::Gard
	::gerd::Gerd
	::gs::Gisele
	::mengni::Mengni
	:*:xx::Xuanxuan
	:*:xz::Xuan
	::fang::Fang
	::dawei::Dawei
	:*:dz::dawei.zhu
	::jiena::Jiena	
	:*:andreas::Andreas
	:*:kjetil::Kjetil
	:*:ekt::Ekaterina
	:*:aleksander::Aleksander
	:*:sondre::Sondre
	::walle::Wall-E
	::js::Jason
	::rachael::Rachael
	
}

{ ;unicode signs
	:*:wjx::★{space}
	:*:ckm::✔{space}
	:*:crs::❌{space} ;x mark
	:*:pushpin::📌{space}
	:*:bckm::☑{space} ;ballot box with check
	:*:hckm::✅{space} ;heavy check mark
	:*:qizhi::🚩{space}
	:*:dollarsign::💲{space}
}

{ ;work related
	:*:taa::Tested and abandoned
	::cm::Concept Miner
	:*:fm::Fannie Mae
	:*:horizon::Horizon
	:*:reportal::Reportal
	:*:mb::Model Builder
	:*:smarthub::SmartHub
	::si::Selective Insurance
	:*:rsc::RS Component
	:*:sodexo::Sodexo
	:*:mg::MoneyGram
	:*:ln::LexisNexis
	::lp::LeasePlan
	:*:grainger::Grainger
	:*:envigo::Envigo
	:*:erie::Erie
	::bestbuy::Best Buy
	::cp::colorpicker
	:*:fs::FlightSafety
	::oe::Open-Ended
	::ei::Erie Insurance
	::pg::Press Ganey
	:*:devops::DevOps
	::cc::Computacenter
	::sf::Screwfix
}

{ ;programming
	:*:opx::openpyxl
}
