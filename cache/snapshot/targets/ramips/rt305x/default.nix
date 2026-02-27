# snapshot ramips/rt305x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt305x/";
  sha256sums = {
    hash = "sha256-YIQhY68kZu0DfHgpamo1ZTlyzROZuWBbJQQQvCDaE7Y=";
    name = "ramips_rt305x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt305x/sha256sums";
  };
  imagebuilder = {
    sha256 = "7d09278cf86be577f382a1c692fae3b76d3022339305ac27ef0912d5517bd6c9";
    filename = "immortalwrt-imagebuilder-ramips-rt305x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+kFoVK2cojpjhtm6izNjIlwZdAqgQY3JPpPYZkOc0DU=";
    name = "ramips_rt305x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt305x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "66189151a2835bfe8fa4fa9cacddac7b";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-66189151a2835bfe8fa4fa9cacddac7b";
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
  kmods."6.12.67-1-66189151a2835bfe8fa4fa9cacddac7b" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt305x/kmods/6.12.67-1-66189151a2835bfe8fa4fa9cacddac7b/";
    sourceInfo = {
      hash = "sha256-ocLSPBBEg/SQb/9EZMgq1w/7WpYw+yPRUNriqhWnAJ8=";
      name = "kmods-ramips_rt305x-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt305x/kmods/6.12.67-1-66189151a2835bfe8fa4fa9cacddac7b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt305x/packages/";
    sourceInfo = {
      hash = "sha256-igZT62SNXCoi2C2I/G0ffA7w1kwKf4iEoIlaZFWChwU=";
      name = "ramips_rt305x-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt305x/packages/packages.adb";
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
