# 25.12.0-rc1 bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-46whuiXyUJjpvA4c4i5mcfaeafGyqwlgNHIAuPxUAsM=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "ba842a1836ed7b603a39777113533f0d47daf104518c978aa1c0d26b4b65803e";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-P895PxC62khqKnWpAnPIXmiSSYOVV1Y0i/+A12ApUEQ=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "6612093e1cfb531ecc3779225436aef7";
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
    kmods_target = "6.12.74-1-6612093e1cfb531ecc3779225436aef7";
    profiles = {
      huawei_hg253s-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
        ];
      };
      netgear_dgnd3700-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.74-1-6612093e1cfb531ecc3779225436aef7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6362/kmods/6.12.74-1-6612093e1cfb531ecc3779225436aef7/";
    sourceInfo = {
      hash = "sha256-rZIObJlIY+/SYMEfnoG9qaUVQrrs6oetvwDUcRzzkUY=";
      name = "kmods-bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6362/kmods/6.12.74-1-6612093e1cfb531ecc3779225436aef7/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-D9Db+qXRLPwl0nMlvHC2QY8ZcQJkV+yXP2i71Ku3rHE=";
      name = "bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6362/packages/packages.adb";
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
