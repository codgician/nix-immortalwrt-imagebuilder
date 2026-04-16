# 25.12.0-rc2 ramips/rt305x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt305x/";
  sha256sums = {
    hash = "sha256-kf9wIyHdbAcwi+pYMRk5JnPphp91i86SStZ6624TldQ=";
    name = "ramips_rt305x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt305x/sha256sums";
  };
  imagebuilder = {
    sha256 = "b257f0fc824aecab8446d1520c3496d2cbc3611b26256f8fe97fd92b1a6b5900";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-ramips-rt305x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5xn/RtS3lTJgs8f3blOwne9tK5r3dJm7gLw8Z3z31Z0=";
    name = "ramips_rt305x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt305x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "15a45b3f8d94c5506fca1ce0bbb63429";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-15a45b3f8d94c5506fca1ce0bbb63429";
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
  kmods."6.12.79-1-15a45b3f8d94c5506fca1ce0bbb63429" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt305x/kmods/6.12.79-1-15a45b3f8d94c5506fca1ce0bbb63429/";
    sourceInfo = {
      hash = "sha256-m62EnSmk7+HLmhA0bU+4eqKcFhZA+Wq7FVK/lsNL0MI=";
      name = "kmods-ramips_rt305x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt305x/kmods/6.12.79-1-15a45b3f8d94c5506fca1ce0bbb63429/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt305x/packages/";
    sourceInfo = {
      hash = "sha256-rb9wf9QnV2tVm/BpiptS/++kvhTg+gHJyOBsN34oHEU=";
      name = "ramips_rt305x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt305x/packages/packages.adb";
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
