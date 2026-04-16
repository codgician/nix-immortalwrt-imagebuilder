# 25.12.0-rc2 bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-RRWNQ8c+bnHJDxTczTkymRBeLZLj6xqA44KSEK7TRqA=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "da928090220931e13eff1aa89b29409318f6af2e3f1b812f5aa5c05aa8872ccb";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-muxj/YXSKZcE2VbdTNvs+B8oo/i4IxpPV2QeAzeAIog=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "bd7cf8327bca645cc305133d3828c1ad";
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
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.79-1-bd7cf8327bca645cc305133d3828c1ad";
    profiles = {
      huawei_hg553 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-a = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-c = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.79-1-bd7cf8327bca645cc305133d3828c1ad" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6358/kmods/6.12.79-1-bd7cf8327bca645cc305133d3828c1ad/";
    sourceInfo = {
      hash = "sha256-uDvVR7/Ca9dhdl6Ir/+XLLWfBp8pZbf4bK0Cty9QbCM=";
      name = "kmods-bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6358/kmods/6.12.79-1-bd7cf8327bca645cc305133d3828c1ad/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-hTOzWA9x3XKjmiENSNo2oeYNoRETIRe19XLw8WG/SLI=";
      name = "bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6358/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
