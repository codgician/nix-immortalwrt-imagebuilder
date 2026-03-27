# 24.10.2 ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-EKnC8z+d1U5+QXVrpeHaoD2mheXMkxQTAM8JveWPy3c=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "a986d689dbf5dc8ac6e9e4501958c8acf524f8fb876945114a62842fd28a2052";
    filename = "immortalwrt-imagebuilder-24.10.2-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-W/59ZjFM9YrVPu3+uYeAN7IjHOug/xiCYEpZ0+Y/MwI=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "8104809f850a45ab24c966a2eecff605";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-8104809f850a45ab24c966a2eecff605";
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
  kmods."6.6.93-1-8104809f850a45ab24c966a2eecff605" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/chromium/kmods/6.6.93-1-8104809f850a45ab24c966a2eecff605/";
    sourceInfo = {
      hash = "sha256-yEVBWU21D7Bj2lzGPDXj4DpPlKOBKxtEZ08Zz/RAsrs=";
      name = "kmods-ipq40xx_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/chromium/kmods/6.6.93-1-8104809f850a45ab24c966a2eecff605/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-kDbR7XOBi48DOT1WymIqT9Mj/d1aPsnkP1yhKIRSDjM=";
      name = "ipq40xx_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/chromium/packages/Packages";
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
