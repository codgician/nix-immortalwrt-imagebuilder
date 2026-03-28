# snapshot ramips/rt305x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/";
  sha256sums = {
    hash = "sha256-NHZKQmG3hehZVveaorTfyALrCm2td2AKVxt6RWqv0/I=";
    name = "ramips_rt305x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/sha256sums";
  };
  imagebuilder = {
    sha256 = "bb3442268215d40bac7f94387a91011662b7f58b07fb2d885e5aa0fc63158d24";
    filename = "immortalwrt-imagebuilder-ramips-rt305x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HGnhVSArkqGs2joSU6uhL0UsnLBgf6tmsTi/wkwzlpw=";
    name = "ramips_rt305x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "eab68fa70a53652ab007fb7cb55958ec";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-eab68fa70a53652ab007fb7cb55958ec";
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
  kmods."6.12.77-1-eab68fa70a53652ab007fb7cb55958ec" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/kmods/6.12.77-1-eab68fa70a53652ab007fb7cb55958ec/";
    sourceInfo = {
      hash = "sha256-r7uonJrHvglDS1VNUec3HpBrQeTCOUkZi6nHofSRoTU=";
      name = "kmods-ramips_rt305x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt305x/kmods/6.12.77-1-eab68fa70a53652ab007fb7cb55958ec/packages.adb";
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
      hash = "sha256-cD0Dl9VZxjRFcm6N3eM5lak71A5VqT6TCdNoNIi6Gbk=";
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
