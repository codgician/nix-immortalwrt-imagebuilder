# snapshot bcm27xx/bcm2708
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-T4NpiRGMOaYgl20XSIKH4IetEVAwuzx+//QA/nP9QNY=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "5abd0f03dfee41f436905faf1e61e4a605a7927df6a375a1ef3f18268273840f";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-QYnXXUNIr3IF2JXUxPpqoYgXujX7DTxl/JYAUttOQH0=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "c89e698b3ab6578ce92dc335a8f318a4";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nft-offload"
      "kmod-nls-cp437"
      "kmod-nls-iso8859-1"
      "kmod-sound-arm-bcm2835"
      "kmod-sound-core"
      "kmod-usb-hid"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "6.12.67-1-c89e698b3ab6578ce92dc335a8f318a4";
    profiles = {
      rpi = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
        ];
      };
    };
  };
  kmods."6.12.67-1-c89e698b3ab6578ce92dc335a8f318a4" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2708/kmods/6.12.67-1-c89e698b3ab6578ce92dc335a8f318a4/";
    sourceInfo = {
      hash = "sha256-+Rw0vIMFXbM904QzjaHQwPQzmNAEJOcI4klYl0o8h3Y=";
      name = "kmods-bcm27xx_bcm2708-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2708/kmods/6.12.67-1-c89e698b3ab6578ce92dc335a8f318a4/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-gPw3pemZ74hedNGPNzpQHrdfkcI/xA4rJvjQnn0nWzo=";
      name = "bcm27xx_bcm2708-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2708/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_arm1176jzf-s_vfp";
  feeds = import ./../../../packages/arm_arm1176jzf-s_vfp.nix;
}
