# snapshot ramips/rt305x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/";
  sha256sums = {
    hash = "sha256-iNdyX6VgGhPOuFkk0fB2yr+11DlptE50xwMfcbqablo=";
    name = "ramips_rt305x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/sha256sums";
  };
  imagebuilder = {
    sha256 = "2374920d172810bf70bfa9d04da6a15d2821a5f0bf854a9c5162d23a67af41ac";
    filename = "immortalwrt-imagebuilder-ramips-rt305x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-loL+lS9B2iU/44tBqlsXUh3l5qhMyO2iAMqmU9ttd7U=";
    name = "ramips_rt305x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "0ab728044350f8b38f7a4ef6a024f687";
      version = "6.12.80";
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
    kmods_target = "6.12.80-1-0ab728044350f8b38f7a4ef6a024f687";
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
  kmods."6.12.80-1-0ab728044350f8b38f7a4ef6a024f687" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/kmods/6.12.80-1-0ab728044350f8b38f7a4ef6a024f687/";
    sourceInfo = {
      hash = "sha256-hAFkwNEpbtjibRc+xVVFk37uQkdsQJXItWIFtfStj/s=";
      name = "kmods-ramips_rt305x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/kmods/6.12.80-1-0ab728044350f8b38f7a4ef6a024f687/packages.adb";
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
      hash = "sha256-IWYLDLQeiujeyvQSuTlPTTUyG1diEu/atle7UazlMlg=";
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
