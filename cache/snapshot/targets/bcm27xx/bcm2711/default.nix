# snapshot bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-pJ+zL47393Ex+IgBaVUcL+vf1//A0Qm0pXA6bXUzxSE=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "99d5ef8cc6022feff561955aa5070a332ff63a292607131963386ecd882185f6";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HoNHI0ic711571+wIVAqrN2m3IGp7tDrzKKJzqIvohA=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "baf52b2a54e44b6fef36bd6913cd0e16";
      version = "6.18.60";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nft-offload"
      "kmod-nls-cp437"
      "kmod-nls-iso8859-1"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "video-support"
    ];
    kmods_target = "6.18.60-1-baf52b2a54e44b6fef36bd6913cd0e16";
    profiles = {
      rpi-4 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-usb-net-lan78xx"
          "kmod-usb-net-rtl8152"
          "kmod-r8169"
        ];
      };
    };
  };
  kmods."6.18.60-1-baf52b2a54e44b6fef36bd6913cd0e16" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/kmods/6.18.60-1-baf52b2a54e44b6fef36bd6913cd0e16/";
    sourceInfo = {
      hash = "sha256-T9aY2PXpl4PANP/OS/tx8YQGzruH8u4XUMtOjaaTcAo=";
      name = "kmods-bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/kmods/6.18.60-1-baf52b2a54e44b6fef36bd6913cd0e16/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-GOxgn9Pod6i931bVXnetSpQ0LGNS7Ubwd+k1X4sdnd4=";
      name = "bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a72";
  feeds = import ./../../../packages/aarch64_cortex-a72.nix;
}
