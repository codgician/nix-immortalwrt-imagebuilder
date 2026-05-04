# snapshot mvebu/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-lK2oJpe2ul0n5qOpfiIGpZJtnXjNLX/LjkjUIUl+sxY=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "6584d720cef4dc52c897d5909f835b3294ff7e8743955c4e3e6f2aef14759062";
    filename = "immortalwrt-imagebuilder-mvebu-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-p0tE+kcqnhAGI8NITE2A5WrHJZ+E5ITlIa7YJg5P7c8=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "3c283535ee9d3935128e704cf18222ba";
      version = "6.12.85";
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
    kmods_target = "6.12.85-1-3c283535ee9d3935128e704cf18222ba";
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
          "f2fs-tools"
          "fdisk"
          "kmod-i2c-pxa"
          "kmod-hwmon-lm75"
          "kmod-dsa-mv88e6xxx"
        ];
      };
      methode_udpu = {
        device_packages = [
          "f2fs-tools"
          "fdisk"
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
  kmods."6.12.85-1-3c283535ee9d3935128e704cf18222ba" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa53/kmods/6.12.85-1-3c283535ee9d3935128e704cf18222ba/";
    sourceInfo = {
      hash = "sha256-c3dmAWjXNzP2GISxdCeH/Ko24tJG4kQ5j7E1hNQ0Pl0=";
      name = "kmods-mvebu_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa53/kmods/6.12.85-1-3c283535ee9d3935128e704cf18222ba/packages.adb";
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
      hash = "sha256-0BT2Y0niZywI53i+4wjJTQDSh9pnuSJ+LA2nrbQH4dw=";
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
