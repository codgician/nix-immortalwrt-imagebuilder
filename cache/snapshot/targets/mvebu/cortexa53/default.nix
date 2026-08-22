# snapshot mvebu/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-36mSrM3nQq3/ZG9xFay0saTROhCLf7HvSpw1+UmOA9k=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "b1b5d9fb6d2c91216d355f24d79c25b12f01359ab68ba12134ca8171e84432ee";
    filename = "immortalwrt-imagebuilder-mvebu-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-nUfXahmlXepK3MZtJurAgp8t7NNz9OBsdAgW1D/V0KA=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "29321aebd527463cc0e21a5fa98c8646";
      version = "6.18.44";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.44-1-29321aebd527463cc0e21a5fa98c8646";
    profiles = {
      cznic_turris-mox = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb3"
          "kmod-rtc-ds1307"
          "kmod-i2c-pxa"
          "kmod-dsa"
          "kmod-dsa-mv88e6xxx"
          "kmod-sfp"
          "kmod-phy-marvell"
          "kmod-phy-marvell-10g"
          "kmod-ath10k"
          "ath10k-board-qca988x"
          "ath10k-firmware-qca988x"
          "kmod-mt7915e"
          "kmod-mt7915-firmware"
          "mwlwifi-firmware-88w8997"
          "wpad-openssl"
          "kmod-mwifiex-sdio"
          "kmod-btmrvl"
        ];
      };
      glinet_gl-mv1000 = {
        device_packages = [ "kmod-dsa-mv88e6xxx" ];
      };
      globalscale_espressobin = {
        device_packages = [ "kmod-dsa-mv88e6xxx" ];
      };
      globalscale_espressobin-emmc = {
        device_packages = [ "kmod-dsa-mv88e6xxx" ];
      };
      globalscale_espressobin-ultra = {
        device_packages = [
          "kmod-i2c-pxa"
          "kmod-rtc-pcf8563"
          "kmod-dsa-mv88e6xxx"
        ];
      };
      globalscale_espressobin-v7 = {
        device_packages = [ "kmod-dsa-mv88e6xxx" ];
      };
      globalscale_espressobin-v7-emmc = {
        device_packages = [ "kmod-dsa-mv88e6xxx" ];
      };
      marvell_armada-3720-db = {
        device_packages = [ ];
      };
      methode_edpu = {
        device_packages = [
          "kmod-i2c-pxa"
          "kmod-hwmon-lm75"
          "kmod-dsa-mv88e6xxx"
        ];
      };
      methode_udpu = {
        device_packages = [
          "kmod-i2c-pxa"
          "kmod-hwmon-lm75"
          "kmod-dsa-mv88e6xxx"
        ];
      };
      ripe_atlas-v5 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.44-1-29321aebd527463cc0e21a5fa98c8646" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa53/kmods/6.18.44-1-29321aebd527463cc0e21a5fa98c8646/";
    sourceInfo = {
      hash = "sha256-dHwOu4rs5gmOH04dXHamB2KVTSZp1m52LoopgY2plFY=";
      name = "kmods-mvebu_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa53/kmods/6.18.44-1-29321aebd527463cc0e21a5fa98c8646/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-6uOTUhhuZLa43dQDAKeF0TLxZR9TG5odO8D8qfupGpU=";
      name = "mvebu_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa53/packages/packages.adb";
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
