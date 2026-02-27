# 24.10.5 bcm27xx/bcm2711
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-D499MD8tn5pTRnwR6vVnB833t4goA/0mRbwnb0ukREE=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "e15b390ebc9a3560d3e40c490eacd5352d4556c417186bdf828b09e55354a55c";
    filename = "immortalwrt-imagebuilder-24.10.5-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-g1P4PeWZ7iI6b3okFW+/J2O6bFSHq22sSA0U08P/et0=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "cb9a3b476288e32154c7c84bae3d2e37";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-cb9a3b476288e32154c7c84bae3d2e37";
    profiles = {
      rpi-4 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
          "kmod-i2c-brcmstb"
          "kmod-usb-net-lan78xx"
          "kmod-r8169"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.122-1-cb9a3b476288e32154c7c84bae3d2e37" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2711/kmods/6.6.122-1-cb9a3b476288e32154c7c84bae3d2e37/";
    sourceInfo = {
      hash = "sha256-F7mzMO3oKoiIb7WsNWkeh3x5AiQwh7IjTCg5P7IhDSA=";
      name = "kmods-bcm27xx_bcm2711-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2711/kmods/6.6.122-1-cb9a3b476288e32154c7c84bae3d2e37/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-ARRoLoOayuzHc+gDMdtAJAdPWJE7ZqoSwdoOfaz5fxE=";
      name = "bcm27xx_bcm2711-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2711/packages/Packages";
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
