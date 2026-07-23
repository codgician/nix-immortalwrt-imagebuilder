# snapshot ramips/rt305x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/";
  sha256sums = {
    hash = "sha256-uCXLD3anrsWzqmCip0TUdkZbCf/KaU8dqOQp3H561LM=";
    name = "ramips_rt305x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/sha256sums";
  };
  imagebuilder = {
    sha256 = "f4b904177b1333686391934e22757b03713489e1ef8f859f27abb7b10b5cff3b";
    filename = "immortalwrt-imagebuilder-ramips-rt305x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-XT5tVJSV52zNxPvISYMTJKNzrOmLH8hbKkkKnRAXOvQ=";
    name = "ramips_rt305x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "e1e63295d92f6a8293bbd0b442a9602a";
      version = "6.18.39";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-rt2800-soc"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.18.39-1-e1e63295d92f6a8293bbd0b442a9602a";
    profiles = {
      allnet_all5002 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
          "kmod-i2c-gpio"
          "kmod-hwmon-lm92"
          "kmod-gpio-pcf857x"
        ];
      };
      argus_atp-52b = {
        device_packages = [ ];
      };
      fon_fonera-20n = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      hauppauge_broadway = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      nexaira_bc2 = {
        device_packages = [ ];
      };
      omnima_miniembplug = {
        device_packages = [ ];
      };
      poray_ip2202 = {
        device_packages = [ ];
      };
      wansview_ncs601w = {
        device_packages = [
          "kmod-video-core"
          "kmod-video-uvc"
          "kmod-usb-ohci"
        ];
      };
      zte_mf283plus = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-net-qmi-wwan"
          "uqmi"
          "kmod-usb-serial"
          "kmod-usb-serial-option"
        ];
      };
      zyxel_nbg-419n-v2 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.39-1-e1e63295d92f6a8293bbd0b442a9602a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/kmods/6.18.39-1-e1e63295d92f6a8293bbd0b442a9602a/";
    sourceInfo = {
      hash = "sha256-mpb/u5MGvsicuMhmMVLoO4YM5gHATkSp/QTGZW18lxI=";
      name = "kmods-ramips_rt305x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/kmods/6.18.39-1-e1e63295d92f6a8293bbd0b442a9602a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/packages/";
    sourceInfo = {
      hash = "sha256-IykE3WgfV03aan1kwC2JoWxBpCJLIJ15Ku4QRKn6vjs=";
      name = "ramips_rt305x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_24kc";
  feeds = import ./../../../packages/mipsel_24kc.nix;
}
