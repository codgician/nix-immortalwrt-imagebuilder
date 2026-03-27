# 24.10.2 bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-0Kh9PZN2X8vay99MpgBk+mhxYgLuyUgWK9l8TL9AgNM=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "ecac82f54834ceb350ef4312f10de48dcbe2d706ff465f2ebb2b7f643e0c0e09";
    filename = "immortalwrt-imagebuilder-24.10.2-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-guS3j8YVLFMA1DRKBlquhwZ3hnhN0vpb2b5XWXb9/Zg=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "e5522e28845d4a666ffa1b2ca37500b7";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-e5522e28845d4a666ffa1b2ca37500b7";
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
  kmods."6.6.93-1-e5522e28845d4a666ffa1b2ca37500b7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2708/kmods/6.6.93-1-e5522e28845d4a666ffa1b2ca37500b7/";
    sourceInfo = {
      hash = "sha256-7XYd3WF33UQs2ZnPE9E8YDSMixZvf2qg+qyYP5tywfE=";
      name = "kmods-bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2708/kmods/6.6.93-1-e5522e28845d4a666ffa1b2ca37500b7/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-OXEObhHgx2UGsrEglcHprsV+gydmaK1GQc6iATwLqfk=";
      name = "bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2708/packages/Packages";
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
