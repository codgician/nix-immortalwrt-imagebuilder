# 24.10.1 bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-v3whwcTUCvFx3oyTrnliSq9bMrcpAS6+Xop6YEo+1KA=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "557738e049a623a2317c60a2b1c7662069a8e3bf174cb033df8616c1ac9c349c";
    filename = "immortalwrt-imagebuilder-24.10.1-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6dDTmNsaRXhsCWKKZz8MzK/lNkMHRUGgCKZh/Uf457I=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "268841055a577a9c86c972fb93dc2428";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-268841055a577a9c86c972fb93dc2428";
    profiles = {
      rpi-4 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-usb-net-lan78xx"
          "kmod-r8169"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.86-1-268841055a577a9c86c972fb93dc2428" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2711/kmods/6.6.86-1-268841055a577a9c86c972fb93dc2428/";
    sourceInfo = {
      hash = "sha256-PBWTwWjQt/6s0Vm1C4NfbXDEgD32QpNO6nDhEtGgks8=";
      name = "kmods-bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2711/kmods/6.6.86-1-268841055a577a9c86c972fb93dc2428/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-NuYNEBJkFCjI9U9FMQ+bpdmgX8ZTP66a5v4gw2H5dus=";
      name = "bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm27xx/bcm2711/packages/Packages";
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
