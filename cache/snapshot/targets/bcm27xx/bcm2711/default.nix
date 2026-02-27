# snapshot bcm27xx/bcm2711
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-9kGS/NGxRKRNctHSZ2RpMzftipPJK+obotnabHJfiN4=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "803ba66158fae0ff55a5c17dd1e70b84da774b56376bea66420ec21bbf156c80";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-YxBIzYDPOPYXx0/+5JjhpU8GTl37WpTY69c9Zqiysfs=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "28168b2eff9506f721fa4a3b620c97d5";
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
    kmods_target = "6.12.67-1-28168b2eff9506f721fa4a3b620c97d5";
    profiles = {
      rpi-4 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
          "kmod-i2c-brcmstb"
          "kmod-usb-net-lan78xx"
          "kmod-usb-net-rtl8152"
          "kmod-r8169"
        ];
      };
    };
  };
  kmods."6.12.67-1-28168b2eff9506f721fa4a3b620c97d5" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2711/kmods/6.12.67-1-28168b2eff9506f721fa4a3b620c97d5/";
    sourceInfo = {
      hash = "sha256-eTcwf4Uyt4I84OWvm1gwABZYN0EVFrYQUKgI/hf/wyI=";
      name = "kmods-bcm27xx_bcm2711-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2711/kmods/6.12.67-1-28168b2eff9506f721fa4a3b620c97d5/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-OW9U3aTiG6yybIE8YqRkSAGz/IJD2YMvh/RtOQC6jZU=";
      name = "bcm27xx_bcm2711-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2711/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a72";
  feeds = import ./../../../packages/aarch64_cortex-a72.nix;
}
