# 24.10.7 bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-I1jDj/6yoSpBNyCvRiwrEqvRxL6wlGeb7NVT7Trux1I=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "97b33c59e02e4a7e5ef5f8ff22475a6e936d78c5c7aceb31bcc5a8d1cbe33995";
    filename = "immortalwrt-imagebuilder-24.10.7-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-AeEcKkvUrruatTWdDQg12qkayEDunXk4ZbgTyDn5iGA=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "cb9a3b476288e32154c7c84bae3d2e37";
      version = "6.6.159";
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
    kmods_target = "6.6.159-1-cb9a3b476288e32154c7c84bae3d2e37";
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
  kmods."6.6.159-1-cb9a3b476288e32154c7c84bae3d2e37" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2711/kmods/6.6.159-1-cb9a3b476288e32154c7c84bae3d2e37/";
    sourceInfo = {
      hash = "sha256-aZ8mGJovVWwv8R5nEaLtsld0XRckoEWgITiq+9cu8y0=";
      name = "kmods-bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2711/kmods/6.6.159-1-cb9a3b476288e32154c7c84bae3d2e37/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-PyYGdZJiAvSWA5za0oSUAUWm4h6ng2MkKqBZm855q1M=";
      name = "bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2711/packages/Packages";
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
