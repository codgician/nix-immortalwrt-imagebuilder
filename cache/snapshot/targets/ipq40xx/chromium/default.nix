# snapshot ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-d1g2WcOCwBdOfjQ13rukGwHkvZIw5NdHbDGnFbzftdw=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "9e43f735e2774bb77f4d175175a5bc511c7b9fb3fddef8b509f0f44000c40bb1";
    filename = "immortalwrt-imagebuilder-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-pRVpSEM4MMovfaQOKnwxWsrAiXXB73RAYfZYe4tfWaY=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "aa7c6d258927dafe3c90bff5f4ccaf9c";
      version = "6.18.39";
    };
    default_packages = [
      "apk-openssl"
      "ath10k-board-qca4019"
      "ath10k-firmware-qca4019-ct"
      "automount"
      "base-files"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
      "kmod-usb3"
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
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.18.39-1-aa7c6d258927dafe3c90bff5f4ccaf9c";
    profiles = {
      google_wifi = {
        device_packages = [
          "partx-utils"
          "mkf2fs"
          "e2fsprogs"
          "kmod-fs-ext4"
          "kmod-fs-f2fs"
          "kmod-google-firmware"
          "kmod-ramoops"
        ];
      };
    };
  };
  kmods."6.18.39-1-aa7c6d258927dafe3c90bff5f4ccaf9c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/kmods/6.18.39-1-aa7c6d258927dafe3c90bff5f4ccaf9c/";
    sourceInfo = {
      hash = "sha256-0dCHaKkw5iIGeTeqEI/ylIxSy2L/ZT95cThO9gK1duk=";
      name = "kmods-ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/kmods/6.18.39-1-aa7c6d258927dafe3c90bff5f4ccaf9c/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-7bdaL+sCgjRyQ7kUyjrvVj+iI2p8AehBcRqPT7MZZO8=";
      name = "ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
