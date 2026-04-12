# snapshot ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-8/vbC5yFlEn3vdRmQmxHjhtNXPeYkqhVc7+SHEOIh5Y=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "81d709e0a19d6b10e903f09cda60bf3b5289bdbc8dbdfaa5f95da1b07e8c0eb7";
    filename = "immortalwrt-imagebuilder-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-WYSPqNkeVtPp1auILpgV1HON+L6aGGXNnVMUjjJYiYo=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "f4b743b9442531012cac35846242000a";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-f4b743b9442531012cac35846242000a";
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
  kmods."6.12.77-1-f4b743b9442531012cac35846242000a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/kmods/6.12.77-1-f4b743b9442531012cac35846242000a/";
    sourceInfo = {
      errcode = 1;
      name = "kmods-ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/kmods/6.12.77-1-f4b743b9442531012cac35846242000a/packages.adb";
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
      errcode = 1;
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
