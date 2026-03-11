# snapshot ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-0KRzBcZwZ0XwwG0As0EMQJfklOSXKDunp5QQMx6xgIM=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "a1594a86ff77709a7a8998c710d74ed0275a3924b2664c59df5fdd7ce7ed2ff3";
    filename = "immortalwrt-imagebuilder-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2cSC3G8Ld5uO9Afb4hjKnJIerBYIolNMOCoESuI+FEs=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "ee4f924ea4dc08811f79ff5348f278c4";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-ee4f924ea4dc08811f79ff5348f278c4";
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
  kmods."6.12.74-1-ee4f924ea4dc08811f79ff5348f278c4" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/kmods/6.12.74-1-ee4f924ea4dc08811f79ff5348f278c4/";
    sourceInfo = {
      hash = "sha256-hWYjkZf67XNC3m84Sr4rZQ4KPC4RKjozvrc0tEGa990=";
      name = "kmods-ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/kmods/6.12.74-1-ee4f924ea4dc08811f79ff5348f278c4/packages.adb";
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
      hash = "sha256-/nUsovqc/D04/gkEWRY7+7+sIRcdPTtnrRcE90tXux0=";
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
