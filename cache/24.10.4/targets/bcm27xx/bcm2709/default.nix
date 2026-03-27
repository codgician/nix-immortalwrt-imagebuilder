# 24.10.4 bcm27xx/bcm2709
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-dNQEE12rKJbu5zmD/hszrgJpP3mNHIOEKbWbRQZzGoQ=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "14e61cfe94a182076e02ece009c8b06041f3781b570d7551b9ad110bdeb4e097";
    filename = "immortalwrt-imagebuilder-24.10.4-bcm27xx-bcm2709.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-eMRSf1SIkmS8ZkCZ+9zANCtmVzclNcyvS9wuYHnaPmE=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "3361cffd51fdf130155c7632f9a2e65c";
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
    kmods_target = "6.6.110-1-3361cffd51fdf130155c7632f9a2e65c";
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
  kmods."6.6.110-1-3361cffd51fdf130155c7632f9a2e65c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2709/kmods/6.6.110-1-3361cffd51fdf130155c7632f9a2e65c/";
    sourceInfo = {
      hash = "sha256-R0NVh2SCqUYqVt9uAqBW8pDGBMqoJMnahGuN4Goohwc=";
      name = "kmods-bcm27xx_bcm2709-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2709/kmods/6.6.110-1-3361cffd51fdf130155c7632f9a2e65c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-fNkHvCPFy1238lmUrS3PF7vr9tGKiEJ5FoYvDg+YYsQ=";
      name = "bcm27xx_bcm2709-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2709/packages/Packages";
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
