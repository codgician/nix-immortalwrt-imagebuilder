# 23.05.4 bcm27xx/bcm2710
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-yWyyEWuZ2JNelU38dJVi4kcx2AG+3cHPCVnO5aevUFk=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "185aedbaa5e5ca2cbeb5b5cec27ff8a7366f9f178d1d2c549d448ec5c5fb2831";
    filename = "immortalwrt-imagebuilder-23.05.4-bcm27xx-bcm2710.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-KmyLdrgREieT+2BADmQdtTjiXSd44CwMQaVxHCgrVHo=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = null;
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
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
      "luci"
      "luci-app-cpufreq"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "null-null-null";
    profiles = {
      rpi-3 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-uZe8eYOyhYuawOTvjbHOU/PkJ6lFquouU2ABMB04ZZE=";
      name = "bcm27xx_bcm2710-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2710/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
