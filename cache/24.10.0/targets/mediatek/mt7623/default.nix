# 24.10.0 mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-ehbzVh5uJTJIANKRvh/8SsCPMAWn2mHMQBqxXEmDVZc=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "cdf11c870a80873aaaed15ee28bcf60187a84ee4535a4eb7c41c62504a831f7d";
    filename = "immortalwrt-imagebuilder-24.10.0-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xFR1Dl0SIQE3+ze++PRtym9zcRrne+Cvd30PtFi8hgc=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "b4f19c04dd04ad7a3cd5721b86066674";
      version = "6.6.73";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fitblk"
      "fstools"
      "kmod-crypto-hw-safexcel"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    ];
    kmods_target = "6.6.73-1-b4f19c04dd04ad7a3cd5721b86066674";
    profiles = {
      bananapi_bpi-r2 = {
        device_packages = [
          "mkf2fs"
          "e2fsprogs"
          "kmod-usb3"
          "kmod-ata-ahci"
        ];
      };
      unielec_u7623-02 = {
        device_packages = [
          "kmod-fs-vfat"
          "kmod-nls-cp437"
          "kmod-nls-iso8859-1"
          "kmod-mmc"
          "mkf2fs"
          "e2fsprogs"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-ata-ahci"
        ];
      };
      unielec_u7623-02-emmc-512m-legacy = {
        device_packages = [
          "kmod-fs-vfat"
          "kmod-nls-cp437"
          "kmod-nls-iso8859-1"
          "kmod-mmc"
          "mkf2fs"
          "e2fsprogs"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-ata-ahci"
          "partx-utils"
        ];
      };
    };
  };
  kmods."6.6.73-1-b4f19c04dd04ad7a3cd5721b86066674" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7623/kmods/6.6.73-1-b4f19c04dd04ad7a3cd5721b86066674/";
    sourceInfo = {
      hash = "sha256-0J90+W+cGH8BMCu56bMDMiR00Pi9tyuzRDAHWldZ4iM=";
      name = "kmods-mediatek_mt7623-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7623/kmods/6.6.73-1-b4f19c04dd04ad7a3cd5721b86066674/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-XGLEAru93YhCyJiOw3Og7Rdcv1JLroYbZyPuqEm1tg8=";
      name = "mediatek_mt7623-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7623/packages/Packages";
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
