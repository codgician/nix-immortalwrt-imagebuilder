# 24.10.6 bcm27xx/bcm2709
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-mef1Z8vP+GdVAerKJ0mfDgvf06mcMrfXYMpKTxf7t6s=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "58d41724706db9470086b96a7f375b3906edb2e2ab8dd89945ac00eb9514a177";
    filename = "immortalwrt-imagebuilder-24.10.6-bcm27xx-bcm2709.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-twCGxHMG0L7unGzOoWEIrkmC5HnBi1GZzbiMDPSLbvI=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "8b5d9c75e91a19c8bebe767b9cb5da4b";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-8b5d9c75e91a19c8bebe767b9cb5da4b";
    profiles = {
      rpi-2 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
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
  kmods."6.6.133-1-8b5d9c75e91a19c8bebe767b9cb5da4b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2709/kmods/6.6.133-1-8b5d9c75e91a19c8bebe767b9cb5da4b/";
    sourceInfo = {
      hash = "sha256-LN28QtaDbJJBBlzXvEEjuMndv+Olbr0alaYNnT8bmD8=";
      name = "kmods-bcm27xx_bcm2709-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2709/kmods/6.6.133-1-8b5d9c75e91a19c8bebe767b9cb5da4b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-9wpkvp3gV1KajuzEvaLBazROuhTUYmvDOccQDvLh1AM=";
      name = "bcm27xx_bcm2709-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2709/packages/Packages";
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
