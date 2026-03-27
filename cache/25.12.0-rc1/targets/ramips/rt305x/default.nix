# 25.12.0-rc1 ramips/rt305x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt305x/";
  sha256sums = {
    hash = "sha256-LleZVfL6nQgEDyryRVMtD9h563XkrgllUkqgsW8IB6s=";
    name = "ramips_rt305x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt305x/sha256sums";
  };
  imagebuilder = {
    sha256 = "bab9471bc14c4356fd0e2be25f7f454f61b6350965eb3dc529d75eda56826a75";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-ramips-rt305x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-I+tO3Ilht/d4+g5w1w2aQY0Q6uHceT5T/66kmdodDRA=";
    name = "ramips_rt305x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt305x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "6834371f8e2dd758fafba38e90d52e21";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-6834371f8e2dd758fafba38e90d52e21";
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
  kmods."6.12.74-1-6834371f8e2dd758fafba38e90d52e21" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt305x/kmods/6.12.74-1-6834371f8e2dd758fafba38e90d52e21/";
    sourceInfo = {
      hash = "sha256-bWmsH9zSqEOhX/TJSFr3Yp7F6M54W/xY3jxd/8W16Zw=";
      name = "kmods-ramips_rt305x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt305x/kmods/6.12.74-1-6834371f8e2dd758fafba38e90d52e21/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt305x/packages/";
    sourceInfo = {
      hash = "sha256-mv1uJD0IB4qCEPhr6I+9qwlnC0lb8+sB+g07OYRJryw=";
      name = "ramips_rt305x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt305x/packages/packages.adb";
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
