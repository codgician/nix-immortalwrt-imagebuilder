# 25.12.0-rc2 bcm47xx/mips74k
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/mips74k/";
  sha256sums = {
    hash = "sha256-mg2jtq2WUx4oodqsMKFeFSdGEnbp7ZJiOh1gHCFhNCg=";
    name = "bcm47xx_mips74k-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/mips74k/sha256sums";
  };
  imagebuilder = {
    sha256 = "792140465fc15334de758d52ba834211df4be951b6901471eb2d4db00bb0d85d";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bcm47xx-mips74k.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ivoWX4/WBqOqseiLGjqiKGMcBjJNKZiaR3JZyT6wLTc=";
    name = "bcm47xx_mips74k-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/mips74k/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "c3f76927c71cfbc28174c6823ff48b7e";
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
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.12.79-1-c3f76927c71cfbc28174c6823ff48b7e";
    profiles = {
      asus_rt-ac53u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_rt-n14uhp = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_rt-n15u = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_rt-n16 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_rt-n66u = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_rt-n66w = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_e1550-v1 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_e2500-v1 = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_e2500-v2 = {
        device_packages = [ "kmod-b43" ];
      };
      "linksys_e2500-v2.1" = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_e2500-v3 = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_e3200-v1 = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_e4200-v1 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_r6200-v1 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wn2500rp-v1 = {
        device_packages = [ "kmod-b43" ];
      };
      netgear_wndr3400-v1 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wndr3400-v2 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wndr3400-v3 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wndr3700-v3 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wndr4000 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wnr3500l-v1 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wnr3500l-v1-na = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wnr3500l-v2 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      standard = {
        device_packages = [ ];
      };
      standard-noloader-nodictionarylzma = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.79-1-c3f76927c71cfbc28174c6823ff48b7e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/mips74k/kmods/6.12.79-1-c3f76927c71cfbc28174c6823ff48b7e/";
    sourceInfo = {
      hash = "sha256-TCNBXelwQAcsfN2ZFnn2C94LqpFyrisp/7w/2G5rMV0=";
      name = "kmods-bcm47xx_mips74k-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/mips74k/kmods/6.12.79-1-c3f76927c71cfbc28174c6823ff48b7e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/mips74k/packages/";
    sourceInfo = {
      hash = "sha256-wcpc6AjfcRxiis5b8pAutfuqXK5qPb0qzhEXnj4ATRw=";
      name = "bcm47xx_mips74k-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/mips74k/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_74kc";
  feeds = import ./../../../packages/mipsel_74kc.nix;
}
