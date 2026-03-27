# 24.10.1 bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-OTTEJEPvRDMOjCCQ3VU4B+ueNClBT+7OtojCFiXTKQY=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "e4a06415e76f497be57f40ea994470cad29e07121270048bd3f01348996733a8";
    filename = "immortalwrt-imagebuilder-24.10.1-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-SzYi9v3xKvE11mMyoEXbOniFrpS8esFcgFZq1CD+YTE=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "06d7927ad425a1921a08be64ac1e306a";
      version = "6.6.86";
    };
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
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
      "luci-app-cpufreq"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "6.6.86-1-06d7927ad425a1921a08be64ac1e306a";
    profiles = {
      rpi = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.86-1-06d7927ad425a1921a08be64ac1e306a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2708/kmods/6.6.86-1-06d7927ad425a1921a08be64ac1e306a/";
    sourceInfo = {
      hash = "sha256-WWUIeUEAPOlgd5K7DYqPrICiI5ZE2iYp/I1ifdu+HVg=";
      name = "kmods-bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2708/kmods/6.6.86-1-06d7927ad425a1921a08be64ac1e306a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-yza7MC9h2DIXcIUQeEWa5UaaykZCqQhk9wWJGgxbrqY=";
      name = "bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2708/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_arm1176jzf-s_vfp";
  feeds = import ./../../../packages/arm_arm1176jzf-s_vfp.nix;
}
