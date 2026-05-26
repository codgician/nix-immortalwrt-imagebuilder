# 25.12.0 ramips/rt305x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt305x/";
  sha256sums = {
    hash = "sha256-dURxVGGHjdSFS3SfliwnE47Ynej289hQIq6AUj1Snvo=";
    name = "ramips_rt305x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt305x/sha256sums";
  };
  imagebuilder = {
    sha256 = "56bdf8d3b54eccd6f2a66d94f84bc16facc72b05199a6f768011024763fe270b";
    filename = "immortalwrt-imagebuilder-25.12.0-ramips-rt305x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-CfHve/2nKynO8NyUN8O6585YLQSd/pfKxRLY5aFDqm8=";
    name = "ramips_rt305x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt305x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "5a651936c5c2f1701d1548ae2b411e87";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-rt2800-soc"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.87-1-5a651936c5c2f1701d1548ae2b411e87";
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
  kmods."6.12.87-1-5a651936c5c2f1701d1548ae2b411e87" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt305x/kmods/6.12.87-1-5a651936c5c2f1701d1548ae2b411e87/";
    sourceInfo = {
      hash = "sha256-3w6UGtOD23JA2uj2dlXhUn4MWumscTY6rPIUCM/LArE=";
      name = "kmods-ramips_rt305x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt305x/kmods/6.12.87-1-5a651936c5c2f1701d1548ae2b411e87/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt305x/packages/";
    sourceInfo = {
      hash = "sha256-/RVckTpGKBQrP/iRphRFDBkv/R2KN8jCfaruBRhUgP0=";
      name = "ramips_rt305x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt305x/packages/packages.adb";
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
