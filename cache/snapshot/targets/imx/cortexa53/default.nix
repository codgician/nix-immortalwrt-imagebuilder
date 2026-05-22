# snapshot imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-+KupfrgKKFE5RaCcP4NwM6JthzPvp1sF9geJn7ZT9xk=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "33535dcd0469b8f876d07bb834abc0a7378a231c26585daa915a9008f0576141";
    filename = "immortalwrt-imagebuilder-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Haaun1HHFArcuTmJf/r6p9s6A6hNuvFkBAIi83kLMFo=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "1914f4aca8a687231405219a4697ed4a";
      version = "6.12.89";
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
    kmods_target = "6.12.89-1-1914f4aca8a687231405219a4697ed4a";
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
  kmods."6.12.89-1-1914f4aca8a687231405219a4697ed4a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/kmods/6.12.89-1-1914f4aca8a687231405219a4697ed4a/";
    sourceInfo = {
      hash = "sha256-wbYIYGWUWfRB+q4vRVvPTIQqKtvI+tsCLRQYEwGScDw=";
      name = "kmods-imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/kmods/6.12.89-1-1914f4aca8a687231405219a4697ed4a/packages.adb";
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
      hash = "sha256-1KbBUqFka2Wy+6shvoIsninEbosjznuqRtuJpX7BFbw=";
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
