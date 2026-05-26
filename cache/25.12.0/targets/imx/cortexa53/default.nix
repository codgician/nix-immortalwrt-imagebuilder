# 25.12.0 imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-WMyJB8N9JTgZZgY3mhCtIEyi3tqjb4bC8dGm0wGw6+Q=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "d1d701da51700172127742338baad49ec4c30b5fb09dd2bf616f9e37bb470a08";
    filename = "immortalwrt-imagebuilder-25.12.0-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Nn/FTuS0E/kV2o/cm5UsRYvE0BaweOsjcxoKSZhqalQ=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "4e3f9fd6fa4eb467700c9c1f17b600d7";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.87-1-4e3f9fd6fa4eb467700c9c1f17b600d7";
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
  kmods."6.12.87-1-4e3f9fd6fa4eb467700c9c1f17b600d7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa53/kmods/6.12.87-1-4e3f9fd6fa4eb467700c9c1f17b600d7/";
    sourceInfo = {
      hash = "sha256-xieuEpND4Ln6xc2gxmyGMeWp75ObMSLlpVoqd2d76EQ=";
      name = "kmods-imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa53/kmods/6.12.87-1-4e3f9fd6fa4eb467700c9c1f17b600d7/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-pk24AMUMNi8QGzXPwHOni5Lc0n6HO9hxmNh/amvOEdw=";
      name = "imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa53/packages/packages.adb";
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
