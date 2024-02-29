git clone https://github.com/alacritty/alacritty.git ~/@personal/application/alacritty
cd ~/@personal/application/alacritty

rustup override set stable
rustup update stable

sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

cargo build --release

infocmp alacritty

sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
