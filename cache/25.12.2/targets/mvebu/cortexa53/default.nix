# 25.12.2 mvebu/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-pYEmGjwzT7oS2QmorUuU+c6Z6B9JxaShzXEQ+xtcJR8=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "587ff1c88377166870b90cfc88dea1a3b1cf2848535fbe9cf1e0934865516286";
    filename = "immortalwrt-imagebuilder-25.12.2-mvebu-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-MmpAh+Ln2wqLWD9QIPrsbtsqHg3xyvJrTELpWxDr50E=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "846049ff0684ff21c8cae8e6f2efc82e";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-846049ff0684ff21c8cae8e6f2efc82e";
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
  kmods."6.12.103-1-846049ff0684ff21c8cae8e6f2efc82e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa53/kmods/6.12.103-1-846049ff0684ff21c8cae8e6f2efc82e/";
    sourceInfo = {
      hash = "sha256-hk/I6RvwYhO/6z17+W6LSc/PSc1Exxben9XIzjpQTu0=";
      name = "kmods-mvebu_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa53/kmods/6.12.103-1-846049ff0684ff21c8cae8e6f2efc82e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-05rZ49Ej0Tfe0kuNatclzQCR3cR8CYJv1ZqCAHpdcPo=";
      name = "mvebu_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa53/packages/packages.adb";
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
