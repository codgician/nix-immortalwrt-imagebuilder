# snapshot imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-qHrxn7WbIg568NaFB+vJLTJz4jX9k5kxlAtUo6/Y6hw=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "bffc99ba191f2c15a88b08fd0c3892a4d2260d1cfba60f28aeb9a1847c4fd73c";
    filename = "immortalwrt-imagebuilder-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-jRAT0f8NpiL1ZNJBXl9iKsCeCQiQQObz7Iua4dq0UZE=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "d536dbe92f6ad4ecbaa7ffdc89f87c24";
      version = "6.12.85";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "blkid"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
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
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.85-1-d536dbe92f6ad4ecbaa7ffdc89f87c24";
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
          "kmod-dsa-ksz9477-i2c"
        ];
      };
    };
  };
  kmods."6.12.85-1-d536dbe92f6ad4ecbaa7ffdc89f87c24" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/kmods/6.12.85-1-d536dbe92f6ad4ecbaa7ffdc89f87c24/";
    sourceInfo = {
      hash = "sha256-e3Q72Px/c6fpg65IxNKEMpcaqOEbOVqb+evqtl716rI=";
      name = "kmods-imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/kmods/6.12.85-1-d536dbe92f6ad4ecbaa7ffdc89f87c24/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-PM9P7rOxiUyEWVPfnzhIH/oWfDqRBawFPoU5a/V5FUk=";
      name = "imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/packages/packages.adb";
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
