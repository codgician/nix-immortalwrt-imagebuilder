# 24.10.2 bcm27xx/bcm2710
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-DH4q/cF+JW1bDi8S34CpR0aV++Fm/GTM+g7XgScntYM=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "e4706148f81f6aa4e9067e22792837c1363c4f6198119d42c353dec98ff3c6a5";
    filename = "immortalwrt-imagebuilder-24.10.2-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-TYhD1AIGwgAQ5fntRh/Hri6X/8PAvGWk8W4ByQWmqx0=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "9e038bc7e55363000fe23800eac505ab";
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
    kmods_target = "6.6.93-1-9e038bc7e55363000fe23800eac505ab";
    profiles = {
      rpi-3 = {
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
  kmods."6.6.93-1-9e038bc7e55363000fe23800eac505ab" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2710/kmods/6.6.93-1-9e038bc7e55363000fe23800eac505ab/";
    sourceInfo = {
      hash = "sha256-mv5ncND+DVll0k9NE7+lfvZuPOJVBMfysjyoBtrIlYM=";
      name = "kmods-bcm27xx_bcm2710-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2710/kmods/6.6.93-1-9e038bc7e55363000fe23800eac505ab/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-CYNvFDXH8+g3xZufXflfo+DiBnmZIgp3r813eBEDQuQ=";
      name = "bcm27xx_bcm2710-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2710/packages/Packages";
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
