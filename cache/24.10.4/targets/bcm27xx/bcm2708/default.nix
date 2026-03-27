# 24.10.4 bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-cZPt/JA/iFKds5EjndoBw7YMDg/GZ6M3o6VLXxBL9fM=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "f27e4324fe1e5d73d9a4fc5b75f87c4f389386aa6dacae710592051957f26f9e";
    filename = "immortalwrt-imagebuilder-24.10.4-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-rOU1lYjyESBpfPsXRDTnxLEPYtTYHsLG+h2ensbRURs=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "0dc68825f59d0c807b942419a40e6921";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-0dc68825f59d0c807b942419a40e6921";
    profiles = {
      rpi = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.110-1-0dc68825f59d0c807b942419a40e6921" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2708/kmods/6.6.110-1-0dc68825f59d0c807b942419a40e6921/";
    sourceInfo = {
      hash = "sha256-HaF+t0qwJHSiHdjanWUbwKmJZ1TkSHlc/y2E3KGq9Rs=";
      name = "kmods-bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2708/kmods/6.6.110-1-0dc68825f59d0c807b942419a40e6921/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-ObzrsHY3DywqOBrzhCBHZQgXP/bmcdkEJtFhj3n0Bt4=";
      name = "bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2708/packages/Packages";
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
