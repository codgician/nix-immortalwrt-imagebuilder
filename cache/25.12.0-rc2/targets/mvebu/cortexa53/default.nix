# 25.12.0-rc2 mvebu/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-AvT0PDeiU1o6k8VGqeGWaAlyUv2ns8heZdwxRU0jTP4=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "8a32af3d08aa084aef8ec9c26f3608da5877b274ec778e579a179149cca0e13b";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-mvebu-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-8e3fpugQesqsrA33cBVI+YDfjB2zfmqruyiocZJTDPI=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "178888e4a7836ccee7e7d07e1b600ed8";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
      "autocore"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
    kmods_target = "6.12.79-1-178888e4a7836ccee7e7d07e1b600ed8";
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
  kmods."6.12.79-1-178888e4a7836ccee7e7d07e1b600ed8" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mvebu/cortexa53/kmods/6.12.79-1-178888e4a7836ccee7e7d07e1b600ed8/";
    sourceInfo = {
      hash = "sha256-X4iAlN6Cz4mhlRAccympEv0GmMckoikBs53RgAeIqiE=";
      name = "kmods-mvebu_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mvebu/cortexa53/kmods/6.12.79-1-178888e4a7836ccee7e7d07e1b600ed8/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mvebu/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-ZNmGAZMsAVv/hmpoBTxTmvqcviEHrzK07Sr94T76BSk=";
      name = "mvebu_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mvebu/cortexa53/packages/packages.adb";
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
