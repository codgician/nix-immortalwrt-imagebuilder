# 24.10.4 ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-ipz/oC7YgqIYZKOb72Vhf1s8GgXja6Wrd6ATMVbSrpE=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "9279b8eeb0a67c47c548ad7741ff3d573e5253bc9f2e9dd1043ab2058a6af1a1";
    filename = "immortalwrt-imagebuilder-24.10.4-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-aIAIi2ptVzbYtLhPqYRz/j6VKnNsolgL7+7OEUH7d1w=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "f04e3ebaae4c2ed8b799d540874885e3";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-f04e3ebaae4c2ed8b799d540874885e3";
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
  kmods."6.6.110-1-f04e3ebaae4c2ed8b799d540874885e3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq40xx/chromium/kmods/6.6.110-1-f04e3ebaae4c2ed8b799d540874885e3/";
    sourceInfo = {
      hash = "sha256-CFDmotBIKjped/YlHkChgpQ+rRJlUlZ97IZ79dTn8V0=";
      name = "kmods-ipq40xx_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq40xx/chromium/kmods/6.6.110-1-f04e3ebaae4c2ed8b799d540874885e3/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-WMms5pL1o5+QoXLzRrKeRkYqYRFE63kw09bqMdORhpY=";
      name = "ipq40xx_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq40xx/chromium/packages/Packages";
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
