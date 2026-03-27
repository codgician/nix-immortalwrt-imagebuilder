# 24.10.0 imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-8kGbcdjfLoUMaDa3rdJhSoLJbKEO1PpkqMLv0HbytTY=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "9725b51d8449a1dd9078aa5dd9e46924db0b8ccc4f40a5ccb0ecd0fd20dbb4e0";
    filename = "immortalwrt-imagebuilder-24.10.0-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-27lTvItMHuflwIMw91KClFKbKJqEotigyyu8xtytGys=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "450f04f8379385447f77d7387b9a5d62";
      version = "6.6.73";
    };
    default_packages = [
      "base-files"
      "blkid"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.73-1-450f04f8379385447f77d7387b9a5d62";
    profiles = {
      gateworks_venice = {
        device_packages = [
          "kmod-hwmon-gsc"
          "kmod-rtc-ds1672"
          "kmod-eeprom-at24"
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-pps-gpio"
          "kmod-lan743x"
          "kmod-sky2"
          "kmod-iio-st_accel-i2c"
          "kmod-can"
          "kmod-can-flexcan"
          "kmod-can-mcp251x"
        ];
      };
    };
  };
  kmods."6.6.73-1-450f04f8379385447f77d7387b9a5d62" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa53/kmods/6.6.73-1-450f04f8379385447f77d7387b9a5d62/";
    sourceInfo = {
      hash = "sha256-xW1A+2pShkOwCIp/obkaih68kbJPmGf5lsFuZyqer4w=";
      name = "kmods-imx_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa53/kmods/6.6.73-1-450f04f8379385447f77d7387b9a5d62/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-XYg85ToFyhqds6UE7OtBe/9rexJkv3bBKJoerQ03zlg=";
      name = "imx_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa53/packages/Packages";
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
