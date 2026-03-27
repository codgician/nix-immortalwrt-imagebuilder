# 24.10.1 ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-97lq43NoMaYJlg559R3gxV/xtCBgIrT2czcoT18S8X0=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "8a0e9d82e6f9d3b8ce4550b619ffbe4e696d638c5b0b5e559b1cc79075e28e23";
    filename = "immortalwrt-imagebuilder-24.10.1-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-heQZhGnRKNdS4x2YsVgnEu8rZOgpKcn5RxIe+pRmnNs=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "5fbd6d0aaefed0394a7556307123a722";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-5fbd6d0aaefed0394a7556307123a722";
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
  kmods."6.6.86-1-5fbd6d0aaefed0394a7556307123a722" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/chromium/kmods/6.6.86-1-5fbd6d0aaefed0394a7556307123a722/";
    sourceInfo = {
      hash = "sha256-62vy5Tuo9kSsaLmt/7xLWxMnRoyftMofNlVjcSM4c34=";
      name = "kmods-ipq40xx_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/chromium/kmods/6.6.86-1-5fbd6d0aaefed0394a7556307123a722/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-O/Vq1DNhuTgUgTG4Ezb71YVYIK0qUq+t6BDsX2d7sHs=";
      name = "ipq40xx_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/chromium/packages/Packages";
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
