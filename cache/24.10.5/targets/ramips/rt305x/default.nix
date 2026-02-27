# 24.10.5 ramips/rt305x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt305x/";
  sha256sums = {
    hash = "sha256-sl26brNArOMa4jqUhz3KKkQ5/NamegzLg8IJqSts128=";
    name = "ramips_rt305x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt305x/sha256sums";
  };
  imagebuilder = {
    sha256 = "8bddbd27a4c84a684caf67e4bbc3a54fa07d3f5270e064432aaa6dca856583db";
    filename = "immortalwrt-imagebuilder-24.10.5-ramips-rt305x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-E8qsHMJPokmFNSzqvTSe9EbRaT+Rq9QnjOaLsQaY/uw=";
    name = "ramips_rt305x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt305x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "312b055b2611e35bad49c15a4061361d";
      version = "6.6.122";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-rt2800-soc"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.122-1-312b055b2611e35bad49c15a4061361d";
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
  kmods."6.6.122-1-312b055b2611e35bad49c15a4061361d" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt305x/kmods/6.6.122-1-312b055b2611e35bad49c15a4061361d/";
    sourceInfo = {
      hash = "sha256-u30eN5HtCnlqawilMJHldVb+moO30bZxgmLo1BhoCY4=";
      name = "kmods-ramips_rt305x-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt305x/kmods/6.6.122-1-312b055b2611e35bad49c15a4061361d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt305x/packages/";
    sourceInfo = {
      hash = "sha256-N9VmLmEEhrFGRVQSh+NEggzzF1cgs09bSI3G8+TIB8A=";
      name = "ramips_rt305x-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt305x/packages/Packages";
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
