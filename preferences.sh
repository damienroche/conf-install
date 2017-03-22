# disable window animations ("new window" scale effect)
defaults write nsglobaldomain nsautomaticwindowanimationsenabled -bool false

# disable natural scrolling
defaults write nsglobaldomain com.apple.swipescrolldirection -bool false && killall cfprefsd

# system - disable cursor magnification
defaults write nsglobaldomain cgdisablecursorlocationmagnification -bool yes

# system - locale
defaults write nsglobaldomain applemetricunits -bool yes
defaults write nsglobaldomain applemeasurementunits -string "centimeters"
defaults write nsglobaldomain applelocale -string "fr_us@currency=eur"

# system - set decimal delimiter as dot instead of comma
defaults write nsglobaldomain appleicunumbersymbols '{"0" = "."; "10" = "."; }'

# system - monday is the first day of the week
defaults write nsglobaldomain applefirstweekday -dict 'gregorian' 2

# system - disable hibernation (speeds up entering sleep mode)
sudo pmset -a hibernatemode 0

# system - allow 'locate' command
sudo launchctl load -w /system/library/launchdaemons/com.apple.locate.plist > /dev/null 2>&1

# turn on dashboard-as-space
defaults write com.apple.dashboard enabled-state 2

# screensaver lock with password within 5 seconds
defaults write com.apple.screensaver askforpassword -int 1
defaults write com.apple.screensaver askforpassworddelay -int 5

# make bottom-left hotspot start screensaver
defaults write com.apple.dock wvous-bl-corner -int 5 && \
defaults write com.apple.dock wvous-bl-modifier -int 0

# use plain text mode for new textedit documents
defaults write com.apple.textedit richtext -int 0

# set default finder location to home folder (~/)
defaults write com.apple.finder newwindowtarget -string "pflo" && \
defaults write com.apple.finder newwindowtargetpath -string "file://${home}"

# expand save panel by default
defaults write nsglobaldomain nsnavpanelexpandedstateforsavemode -bool true

# disable file extension change warning
defaults write com.apple.finder fxenableextensionchangewarning -bool false

# use current directory as default search scope in finder
defaults write com.apple.finder fxdefaultsearchscope -string "sccf"

# show path bar in finder
defaults write com.apple.finder showpathbar -bool true

# show status bar in finder
defaults write com.apple.finder showstatusbar -bool true

# avoid creating .ds_store files on network and usb volumes
defaults write com.apple.desktopservices dsdontwritenetworkstores -bool true
defaults write com.apple.desktopservices dsdontwriteusbstores -bool true

# disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true && \
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true && \
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# enable the develop menu and the web inspector in safari
defaults write com.apple.safari includeinternaldebugmenu -bool true && \
defaults write com.apple.safari includedevelopmenu -bool true && \
defaults write com.apple.safari webkitdeveloperextrasenabledpreferencekey -bool true && \
defaults write com.apple.safari com.apple.safari.contentpagegroupidentifier.webkit2developerextrasenabled -bool true && \
defaults write nsglobaldomain webkitdeveloperextras -bool true

# show the ~/library folder
chflags nohidden ~/library

# prevent time machine from prompting to use new hard drives as backup volume
defaults write com.apple.timemachine donotoffernewdisksforbackup -bool true

# time machine - disable local time machine backups
hash tmutil &> /dev/null && sudo tmutil disablelocal

# time machine - disable local time machine snapshots
sudo tmutil disablelocal

# sets default save target to be a local disk, not icloud.
defaults write nsglobaldomain nsdocumentsavenewdocumentstocloud -bool false

# screensaver lock with password within 5 seconds
defaults write com.apple.screensaver askforpassword -int 1
defaults write com.apple.screensaver askforpassworddelay -int 5

# disable airdrop
defaults write com.apple.networkbrowser disableairdrop -bool yes

# login window preferences
# enable secure guest access
sudo defaults write /library/preferences/com.apple.loginwindow guestenabled 1

# show language input menu
sudo defaults write /library/preferences/com.apple.loginwindow showinputmenu 1

# prevent user list with picture to show up, display login and password field instead
sudo defaults write /library/preferences/com.apple.loginwindow showfullname 1

# system - reveal ip address, hostname, os version, etc. when clicking the login window clock
sudo defaults write /library/preferences/com.apple.loginwindow adminhostinfo hostname

# system - disable software updates
sudo softwareupdate --schedule off

# dock - remove all default app icons
defaults write com.apple.dock persistent-apps -array

# finder - use list view in all finder windows
defaults write com.apple.finder fxpreferredviewstyle -string "nlsv"

# finder - allow text selection in quick look
defaults write com.apple.finder qlenabletextselection -bool true

# chrome - prevent native print dialog, use system dialog instead
defaults write com.google.chrome disableprintpreview -boolean true

# mail - copy email addresses as 'foo@example.com' instead of 'foo bar <foo@example.com>'
defaults write com.apple.mail addressesincludenameonpasteboard -bool false

# mail - disable send animation
defaults write com.apple.mail disablesendanimations -bool true

# mail - disable reply animation
defaults write com.apple.mail disablereplyanimations -bool true

# mail - show attachments as icons
defaults write com.apple.mail disableinlineattachmentviewing -bool yes

# address book - enable debug menu
defaults write com.apple.addressbook abshowdebugmenu -bool true

# ical - setup
defaults write com.apple.ical "includedebugmenu" -bool true
defaults write com.apple.ical "showdeclinedevents" -bool true
defaults write com.apple.ical "n days of week" -int 7
defaults write com.apple.ical "sharedcalendarnotificationsdisabled" -bool true
defaults write com.apple.ical "timezone support enabled" -bool true
defaults write com.apple.ical "first day of week" -int 1
defaults write com.apple.ical "number of hours displayed" -int 14

# disk utility - enable debug menu
defaults write com.apple.diskutility dudebugmenuenabled -bool true
defaults write com.apple.diskutility advanced-image-options -bool true

# printer - expand print panel by default
defaults write nsglobaldomain pmprintingexpandedstateforprint -bool true

# printer - automatically quit printer app once the print jobs complete
defaults write com.apple.print.printingprefs "quit when finished" -bool true

# app store - enable the webkit developer tools in the mac app store
defaults write com.apple.appstore webkitdeveloperextras -bool true

# app store - enable debug menu in the mac app store
defaults write com.apple.appstore showdebugmenu -bool true

# system sound - disable sound effects on boot
sudo nvram systemaudiovolume=" "

# system sound - disable the system ui sound effects
defaults write com.apple.systemsound "com.apple.sound.beep.flash" -int 0
defaults write com.apple.systemsound "com.apple.sound.beep.volume" -int 0
defaults write com.apple.systemsound "com.apple.sound.uiaudio.enabled" -int 0

# terminal - prevent beep
echo "set bell-style none" >> ~/.inputrc

# set login window text
sudo defaults write /library/preferences/com.apple.loginwindow loginwindowtext "If you found this computer, please call +33 6 68 98 39 19"

# set hostname
sudo scutil --set hostname damien.local

# set timezone and set clock using network time
sudo systemsetup -settimezone europe/paris
sudo systemsetup setusingnetworktime on

# make keyboard repeat very fast
# enable character repeat on keydown
defaults write -g applepressandholdenabled -bool false

# set a shorter delay until key repeat
defaults write nsglobaldomain initialkeyrepeat -int 12

# set a blazingly fast keyboard repeat rate
defaults write nsglobaldomain keyrepeat -int 1

# set google chrome as default browser
open -a "google chrome" --args --make-default-browser

# add sublime in path to open file with $ subl command in terminal
ln -s "/applications/sublime text.app/contents/sharedsupport/bin/subl" /usr/local/bin/sublime