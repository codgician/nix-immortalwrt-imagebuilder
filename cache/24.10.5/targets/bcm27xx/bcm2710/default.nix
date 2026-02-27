# 24.10.5 bcm27xx/bcm2710
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-BWMi+1dQy2362ZWM3vqiuAIjgPOVguBL+R1umuBiBBk=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "a2a4a76bcfefb51196095d19b73603e24b800a51f1fde5575d994eed05dfcf4d";
    filename = "immortalwrt-imagebuilder-24.10.5-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-X1oBnCw0H/HJx2QQ6IDZga4vsc3Xtjpb2jV1ITrNBRg=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "b47ee40152190b228bf817daee8b7389";
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
    kmods_target = "6.6.122-1-b47ee40152190b228bf817daee8b7389";
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
  kmods."6.6.122-1-b47ee40152190b228bf817daee8b7389" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2710/kmods/6.6.122-1-b47ee40152190b228bf817daee8b7389/";
    sourceInfo = {
      hash = "sha256-WmBwVKyLhWDLAIIO9eju1eANQmuE71u8dc4B7xLi/hc=";
      name = "kmods-bcm27xx_bcm2710-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2710/kmods/6.6.122-1-b47ee40152190b228bf817daee8b7389/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-WIifR1ftxdem9w4rQ6aCXySup/ou63vNuHr8x4BW7Jw=";
      name = "bcm27xx_bcm2710-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2710/packages/Packages";
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
