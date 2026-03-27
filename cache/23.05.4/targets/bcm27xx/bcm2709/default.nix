# 23.05.4 bcm27xx/bcm2709
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-i3EZFthIigQkaMQiT9RXG9o9eWmoyagnNC9JiffOsVo=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "c7b8abad1ffe11c330e7195b87115b5b54bfee8e3ed33dafcad6706f97b3bb60";
    filename = "immortalwrt-imagebuilder-23.05.4-bcm27xx-bcm2709.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-HB2QX/dw65OXqEFuAJbDOJNHXVHhttLjThwbdt9170I=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
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
      rpi-2 = {
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-/bN8tq4s+Gik5q7o9Pf65NEeFfh1h45BAMG0tbLXH2s=";
      name = "bcm27xx_bcm2709-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2709/packages/Packages";
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
