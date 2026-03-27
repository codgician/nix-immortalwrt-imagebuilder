# snapshot imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-o3mv+vOaOUiql2HanZAxj2sfNjjFNehcWLLlekkEi7s=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "b10206fe3dbd22625b5f2e07629311950ac364f4ebfba6d8f1a45b0b47e46e5b";
    filename = "immortalwrt-imagebuilder-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xgP5AV8cE+Hvhv3Xb0oLbFOVsw6unMS2tnmKvgr62HM=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "05e4e40394b034702fafe3818225ca9d";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-05e4e40394b034702fafe3818225ca9d";
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
  kmods."6.12.77-1-05e4e40394b034702fafe3818225ca9d" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/kmods/6.12.77-1-05e4e40394b034702fafe3818225ca9d/";
    sourceInfo = {
      hash = "sha256-XJVwwLMHzPwr5ksSc/2Eb+QwdQB3CzCeJs5ueGv4ZC0=";
      name = "kmods-imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/kmods/6.12.77-1-05e4e40394b034702fafe3818225ca9d/packages.adb";
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
      hash = "sha256-P8tGtUeg6JMAUdENbgSmnOyuetYxoeexu79utSfC42U=";
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
