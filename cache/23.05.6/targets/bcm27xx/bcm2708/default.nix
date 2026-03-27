# 23.05.6 bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-F8+f+lx3CRUQJ7XOOAV0xGPnd/sCplxNSLSfmLEE1ak=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "b8f0bd56cec68eba1b9bc1b410c3fcd902e5f1d152b9c2261064d40c07147cd5";
    filename = "immortalwrt-imagebuilder-23.05.6-bcm27xx-bcm2708.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-ig8gAb9k8Iole7lSjjDFLlsR/TYpbxfVWX/r8M53wbc=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "f849daff145f581d5ea50bcd8850a5a8";
      version = "5.15.189";
    };
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
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "5.15.189-1-f849daff145f581d5ea50bcd8850a5a8";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-IgDV8AZfW64Aa35iyQvsOJdPJn1lBq1S2wBrlLkS/0Q=";
      name = "bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm27xx/bcm2708/packages/Packages";
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
