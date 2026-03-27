# 25.12.0-rc1 mvebu/cortexa72
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mvebu/cortexa72/";
  sha256sums = {
    hash = "sha256-41vZD0vsFAm3kyXPpr2eJGLbOSIdqS17Wz/3WhdZ/n4=";
    name = "mvebu_cortexa72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mvebu/cortexa72/sha256sums";
  };
  imagebuilder = {
    sha256 = "dc37b7668389725e9d2c4ba94b37040b3db4ff154169f89c72df7c454b8a5028";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-mvebu-cortexa72.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZeUdY3GXAlTMDLBWT3D4NvO6CIfBZek9petf00wZ8no=";
    name = "mvebu_cortexa72-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mvebu/cortexa72/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "7ce07d9d71c6287adf277c2b43e9a38f";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-7ce07d9d71c6287adf277c2b43e9a38f";
    profiles = {
      checkpoint_v-80 = {
        device_packages = [
          "kmod-dsa-mv88e6xxx"
          "kmod-hwmon-nct7802"
          "kmod-rtc-ds1307"
        ];
      };
      checkpoint_v-81 = {
        device_packages = [
          "kmod-dsa-mv88e6xxx"
          "kmod-hwmon-nct7802"
          "kmod-rtc-ds1307"
        ];
      };
      globalscale_mochabin = {
        device_packages = [ "kmod-dsa-mv88e6xxx" ];
      };
      iei_puzzle-m901 = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
      iei_puzzle-m902 = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
      marvell_armada7040-db = {
        device_packages = [ ];
      };
      marvell_armada8040-db = {
        device_packages = [ ];
      };
      marvell_clearfog-gt-8k = {
        device_packages = [
          "kmod-i2c-mux-pca954x"
          "kmod-crypto-hw-safexcel"
        ];
      };
      marvell_macchiatobin-doubleshot = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      marvell_macchiatobin-singleshot = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      mikrotik_rb5009 = {
        device_packages = [
          "kmod-i2c-gpio"
          "yafut"
          "kmod-dsa-mv88e6xxx"
        ];
      };
      solidrun_clearfog-pro = {
        device_packages = [
          "kmod-i2c-mux-pca954x"
          "kmod-dsa-mv88e6xxx"
        ];
      };
    };
  };
  kmods."6.12.74-1-7ce07d9d71c6287adf277c2b43e9a38f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mvebu/cortexa72/kmods/6.12.74-1-7ce07d9d71c6287adf277c2b43e9a38f/";
    sourceInfo = {
      hash = "sha256-PrI2scCcPif48MPNTjzXm0VPOnlyom6uMG68ytA8b4c=";
      name = "kmods-mvebu_cortexa72-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mvebu/cortexa72/kmods/6.12.74-1-7ce07d9d71c6287adf277c2b43e9a38f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mvebu/cortexa72/packages/";
    sourceInfo = {
      hash = "sha256-DQmj5X4gywPV58EK8Prwi+M0PFFajtwJx52gPnD5PyY=";
      name = "mvebu_cortexa72-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mvebu/cortexa72/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a72";
  feeds = import ./../../../packages/aarch64_cortex-a72.nix;
}
