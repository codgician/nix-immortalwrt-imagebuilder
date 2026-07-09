# 25.12.1 ramips/rt305x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt305x/";
  sha256sums = {
    hash = "sha256-jFBTgu7eslZetdFi68rhokLTC4HEE4yULPtS3mp3gyY=";
    name = "ramips_rt305x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt305x/sha256sums";
  };
  imagebuilder = {
    sha256 = "bbc275ea2dd7e275be4a70a03ff221219a01a863df397fea2f6968b12086718f";
    filename = "immortalwrt-imagebuilder-25.12.1-ramips-rt305x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-CXfSGnpaYqolXvJMSjAe219N9vhHNMQDUcB0Nevhsds=";
    name = "ramips_rt305x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt305x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "21ebf80e08e8392797f6f47268ec51c2";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-21ebf80e08e8392797f6f47268ec51c2";
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
  kmods."6.12.94-1-21ebf80e08e8392797f6f47268ec51c2" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt305x/kmods/6.12.94-1-21ebf80e08e8392797f6f47268ec51c2/";
    sourceInfo = {
      hash = "sha256-nYb5Smog6wBlLzLiwC9SESat/GuzfAG7dInonkpuDIA=";
      name = "kmods-ramips_rt305x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt305x/kmods/6.12.94-1-21ebf80e08e8392797f6f47268ec51c2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt305x/packages/";
    sourceInfo = {
      hash = "sha256-udrLlthhM0LSRkZfXYHY8h+P9V9+HhwnL9Y3pjCL+3g=";
      name = "ramips_rt305x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ramips/rt305x/packages/packages.adb";
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
