# snapshot bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-OL6oYmvKZPExgGymmrszYlr8ml2J+nIKdpbHv2lgjFw=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "e517873829ae79070bcfad2d714349202099849ed0a4b66610e47e3f2fa38c06";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-b/LUn1hxaQ0QUMkD9s+vRxCJKLZGHKR9aRc1l6UAkCs=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "7305c3add1ba3ac3cf13f5f6c40411e0";
      version = "6.18.52";
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
    ];
    kmods_target = "6.18.52-1-7305c3add1ba3ac3cf13f5f6c40411e0";
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
  kmods."6.18.52-1-7305c3add1ba3ac3cf13f5f6c40411e0" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/kmods/6.18.52-1-7305c3add1ba3ac3cf13f5f6c40411e0/";
    sourceInfo = {
      hash = "sha256-Dmmpspzs/PEfY1nTSnu45YBnXmcYT0FqFqD+cCcDOjA=";
      name = "kmods-bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2711/kmods/6.18.52-1-7305c3add1ba3ac3cf13f5f6c40411e0/packages.adb";
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
      hash = "sha256-HHRTEK5LofniJoTwgw8SCfBh/8kwDiKVe0h7FWJXBkc=";
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
