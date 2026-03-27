# 25.12.0-rc1 ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-MwydH5UwwZZJU+FOTiM6lqKZv34BkrbbdFTHaOSxSEo=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "238307c44daf04d6cae15204c7a5acec17c19a5708d592b9cf71206b3ed27e68";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-cDQu8d5uhdqTQvzr8VxJKehw3nQdwTwqOVKpXyLLez4=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "e95c6cb8d6f6d391aec3dee1903bea18";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "ath10k-board-qca4019"
      "ath10k-firmware-qca4019-ct"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
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
    kmods_target = "6.12.74-1-e95c6cb8d6f6d391aec3dee1903bea18";
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
  kmods."6.12.74-1-e95c6cb8d6f6d391aec3dee1903bea18" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/chromium/kmods/6.12.74-1-e95c6cb8d6f6d391aec3dee1903bea18/";
    sourceInfo = {
      hash = "sha256-yd+McnmhMlJjjEbFWDnf9KY/09DUjWa1YnQP8aabkME=";
      name = "kmods-ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/chromium/kmods/6.12.74-1-e95c6cb8d6f6d391aec3dee1903bea18/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-0wcAP44fQkd5cdMAD+fQhmOCT0mzSK8fTi0OPXE8EUo=";
      name = "ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/chromium/packages/packages.adb";
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
