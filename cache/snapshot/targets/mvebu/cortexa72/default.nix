# snapshot mvebu/cortexa72
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa72/";
  sha256sums = {
    hash = "sha256-G9ua6J4tGRA9t8X24CT0zEStCmJdiJx+IyPuGcn9yfs=";
    name = "mvebu_cortexa72-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa72/sha256sums";
  };
  imagebuilder = {
    sha256 = "a2a3fbffed99a936564f8bec6440575d036984167e2ff24a252651b5152d1901";
    filename = "immortalwrt-imagebuilder-mvebu-cortexa72.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Iqzj4HkcajfA6Tx/aKLkLVDSieHE7IoUIzplJ9bO3D8=";
    name = "mvebu_cortexa72-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa72/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "3e1d9c1a6a07af1ab1281b9a2cd95d0a";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-3e1d9c1a6a07af1ab1281b9a2cd95d0a";
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
  kmods."6.12.77-1-3e1d9c1a6a07af1ab1281b9a2cd95d0a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa72/kmods/6.12.77-1-3e1d9c1a6a07af1ab1281b9a2cd95d0a/";
    sourceInfo = {
      hash = "sha256-59wABT+08eQ9B85AyR9pNmqexrsRG/IpXRvMOyi0lMs=";
      name = "kmods-mvebu_cortexa72-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mvebu/cortexa72/kmods/6.12.77-1-3e1d9c1a6a07af1ab1281b9a2cd95d0a/packages.adb";
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
      hash = "sha256-DlYjN2eVRY/sTaCPtMusvj14Woc5JzKIMDZ9mhlIdPI=";
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
