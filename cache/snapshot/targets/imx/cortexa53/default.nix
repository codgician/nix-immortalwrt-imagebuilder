# snapshot imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-4JPfy4EhKGynEXLnlqijFOw4ntOHt5sMrsuR258xOL8=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "e496512771bcd9a9e82d4a0cd0fb16e67aa38745fbf9c106ca554c7b3e766510";
    filename = "immortalwrt-imagebuilder-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-vYcvhgHYkR7Lv8g93OytOcf2Q2Y5exGnEXTRXt1Qy+Y=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "caabc9a44e7dc6ec8548e0aa48f67f3e";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-caabc9a44e7dc6ec8548e0aa48f67f3e";
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
      imx8m = {
        device_packages = [ ];
      };
      kontron_osm-s-imx8mp = {
        device_packages = [
          "kmod-can"
          "kmod-can-flexcan"
          "kmod-eeprom-at24"
          "kmod-leds-gpio"
          "kmod-rtc-rv3028"
        ];
      };
    };
  };
  kmods."6.12.94-1-caabc9a44e7dc6ec8548e0aa48f67f3e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/kmods/6.12.94-1-caabc9a44e7dc6ec8548e0aa48f67f3e/";
    sourceInfo = {
      hash = "sha256-HZOBF6IWHZtavB9fLqpWNjeWg5IvHrsjgRX5yGeaS/A=";
      name = "kmods-imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa53/kmods/6.12.94-1-caabc9a44e7dc6ec8548e0aa48f67f3e/packages.adb";
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
      hash = "sha256-7fxfpv5jg5aIMDbHL1v9LwdoCaMRLuzi3GBEsruipeA=";
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
