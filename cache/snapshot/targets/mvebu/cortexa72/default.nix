# snapshot mvebu/cortexa72
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa72/";
  sha256sums = {
    hash = "sha256-hGkPpdYevaDD+zhbZl4+5T5sP/68dg9aJAx3iCwevdc=";
    name = "mvebu_cortexa72-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa72/sha256sums";
  };
  imagebuilder = {
    sha256 = "e77b8f29c625f3c2e8ff60e6f528b56a3def7eea12c5b7f541c184203b6aa14d";
    filename = "immortalwrt-imagebuilder-mvebu-cortexa72.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-w+TD29ff5itTD4VXP9oBz48buz0L85HfycNSlIj23XY=";
    name = "mvebu_cortexa72-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa72/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "58d7c5c3252a1a42c32874472303a092";
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
    kmods_target = "6.18.44-1-58d7c5c3252a1a42c32874472303a092";
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
      mikrotik_rb5009ug = {
        device_packages = [
          "kmod-i2c-gpio"
          "yafut"
          "kmod-dsa-mv88e6xxx"
        ];
      };
      mikrotik_rb5009upr = {
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
  kmods."6.18.44-1-58d7c5c3252a1a42c32874472303a092" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa72/kmods/6.18.44-1-58d7c5c3252a1a42c32874472303a092/";
    sourceInfo = {
      hash = "sha256-JTY2Cq0oNkJURlti/M9tJaqzs2L5Juzb70jGiE6TAbY=";
      name = "kmods-mvebu_cortexa72-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa72/kmods/6.18.44-1-58d7c5c3252a1a42c32874472303a092/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa72/packages/";
    sourceInfo = {
      hash = "sha256-rpJV6uKH2Rx6VZSr9w2Ts0rm3VNwZql3l9n77fJMerc=";
      name = "mvebu_cortexa72-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa72/packages/packages.adb";
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
