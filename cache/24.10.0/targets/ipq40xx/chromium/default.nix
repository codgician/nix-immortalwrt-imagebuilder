# 24.10.0 ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-Upob9qtL5hA5Rfdp0t4HY5NluDnmlV5UbvDUtTNtCkU=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "06933502caf2980e17692f157dd412d77060a766b2306842fb183ee17a13b37f";
    filename = "immortalwrt-imagebuilder-24.10.0-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-mMdQ0n25pUu0WcjAy78YyMIv7E36uu862oT1TDm5HNs=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "094d8b16bb529404580d3a4f9ed4cba1";
      version = "6.6.73";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-cpufreq"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
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
    kmods_target = "6.6.73-1-094d8b16bb529404580d3a4f9ed4cba1";
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
  kmods."6.6.73-1-094d8b16bb529404580d3a4f9ed4cba1" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/chromium/kmods/6.6.73-1-094d8b16bb529404580d3a4f9ed4cba1/";
    sourceInfo = {
      hash = "sha256-8zWzAHpw4FxMkIyYqtx2x9SLP7u4ZtkVAe+409pTRZc=";
      name = "kmods-ipq40xx_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/chromium/kmods/6.6.73-1-094d8b16bb529404580d3a4f9ed4cba1/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-FmxJrtSQLjm7DIL5k60HAk0bQNVNDA25xuYSztIhKgY=";
      name = "ipq40xx_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/chromium/packages/Packages";
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
