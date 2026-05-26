# 25.12.0 microchipsw/lan969x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/microchipsw/lan969x/";
  sha256sums = {
    hash = "sha256-uekRnD/1StbyyowUBphK0/WK3S5dXLVeJDUnn/xwbG8=";
    name = "microchipsw_lan969x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/microchipsw/lan969x/sha256sums";
  };
  imagebuilder = {
    sha256 = "fdf7637d3dd8742dfe9f4da51b63b8d87c95200479b05726b44b75d52fa2d71b";
    filename = "immortalwrt-imagebuilder-25.12.0-microchipsw-lan969x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-g9+38GbyCAv98RK17sL9WJMVsnLEfhQeMWDbFKntsoE=";
    name = "microchipsw_lan969x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/microchipsw/lan969x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "7a9e0b7fb04ffc4a76fc5af8b719802a";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "dcb"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "ethtool-full"
      "f2fs-tools"
      "firewall4"
      "fstools"
      "ip-bridge"
      "kmod-fs-ext4"
      "kmod-fs-f2fs"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-phy-micrel"
      "kmod-sfp"
      "kmod-sparx5-switch"
      "kmod-usb-dwc3"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "losetup"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.87-1-7a9e0b7fb04ffc4a76fc5af8b719802a";
    profiles = {
      microchip_ev23x71a = {
        device_packages = [ "kmod-i2c-mux-gpio" ];
      };
      novarq_tactical-1000 = {
        device_packages = [
          "kmod-i2c-mux-gpio"
          "kmod-gpio-pwm"
          "kmod-hwmon-pwmfan"
          "kmod-hwmon-gpiofan"
          "kmod-rtc-ds1307"
          "kmod-hwmon-lm75"
        ];
      };
    };
  };
  kmods."6.12.87-1-7a9e0b7fb04ffc4a76fc5af8b719802a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/microchipsw/lan969x/kmods/6.12.87-1-7a9e0b7fb04ffc4a76fc5af8b719802a/";
    sourceInfo = {
      hash = "sha256-m11ifZZiC8zeb0wUkiIeh1ZPO+8XIoghljGFfgbr0Jk=";
      name = "kmods-microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/microchipsw/lan969x/kmods/6.12.87-1-7a9e0b7fb04ffc4a76fc5af8b719802a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/microchipsw/lan969x/packages/";
    sourceInfo = {
      hash = "sha256-T96yisLXf6zF2BECMSg10mU0XLyUp7tfi9yfTgJ8hlA=";
      name = "microchipsw_lan969x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/microchipsw/lan969x/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
