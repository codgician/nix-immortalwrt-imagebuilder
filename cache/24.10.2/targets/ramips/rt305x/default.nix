# 24.10.2 ramips/rt305x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt305x/";
  sha256sums = {
    hash = "sha256-gOLSf7Lr9FFdSCfdBh3P/FdyoQKvSP/r02EIz4QnM8Q=";
    name = "ramips_rt305x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt305x/sha256sums";
  };
  imagebuilder = {
    sha256 = "af94e609a8591bcefe72baee5b709ac1dab72b4e377d53d930512ce94567bbf8";
    filename = "immortalwrt-imagebuilder-24.10.2-ramips-rt305x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-KHaKDGLuBeJ4cg0JqMJlRFSqXeH8PZVqsGo80rnvR30=";
    name = "ramips_rt305x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt305x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "70aa4707f3af25869ec0018735dac52d";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-70aa4707f3af25869ec0018735dac52d";
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
  kmods."6.6.93-1-70aa4707f3af25869ec0018735dac52d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt305x/kmods/6.6.93-1-70aa4707f3af25869ec0018735dac52d/";
    sourceInfo = {
      hash = "sha256-DDrmwAZ+eIjYbwQ1OzW9S8mEFj6XY4xMFaK+SHEP+Tk=";
      name = "kmods-ramips_rt305x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt305x/kmods/6.6.93-1-70aa4707f3af25869ec0018735dac52d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt305x/packages/";
    sourceInfo = {
      hash = "sha256-bRpvjetSFsBR+lqQeuNi1fSP2MC3UosO7tTXgPK+FKg=";
      name = "ramips_rt305x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt305x/packages/Packages";
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
