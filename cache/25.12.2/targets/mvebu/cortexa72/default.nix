# 25.12.2 mvebu/cortexa72
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa72/";
  sha256sums = {
    hash = "sha256-nQQ3ssea6v9nd4F3253TLEncIUy1rLdeAqewNhZIfaE=";
    name = "mvebu_cortexa72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa72/sha256sums";
  };
  imagebuilder = {
    sha256 = "74fbbcfea138ba93df40d0f4dcce3661b734529ccc4187bce9ca73e7b8b5feea";
    filename = "immortalwrt-imagebuilder-25.12.2-mvebu-cortexa72.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-qwJVAY3eVKGUisQEAAM6dbeQSr0g9F4e1swSAhBw6SU=";
    name = "mvebu_cortexa72-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa72/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "b5e1469b79346e310b01b659da480bd3";
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
    kmods_target = "6.12.103-1-b5e1469b79346e310b01b659da480bd3";
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
  kmods."6.12.103-1-b5e1469b79346e310b01b659da480bd3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa72/kmods/6.12.103-1-b5e1469b79346e310b01b659da480bd3/";
    sourceInfo = {
      hash = "sha256-QtQQvxqxomvePTwDecmnGDn9y46z4zI1M2luKkH6PBU=";
      name = "kmods-mvebu_cortexa72-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa72/kmods/6.12.103-1-b5e1469b79346e310b01b659da480bd3/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa72/packages/";
    sourceInfo = {
      hash = "sha256-/FV8wOk2wRTGNrEq6CkHGs5/HaNPSmnzo5fnDCQJLSc=";
      name = "mvebu_cortexa72-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mvebu/cortexa72/packages/packages.adb";
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
