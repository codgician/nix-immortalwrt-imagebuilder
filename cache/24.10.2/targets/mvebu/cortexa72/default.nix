# 24.10.2 mvebu/cortexa72
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa72/";
  sha256sums = {
    hash = "sha256-jVm8kUCnEpZRc6/YgZ/zfuZcUJQptDam2YzdGgDRCow=";
    name = "mvebu_cortexa72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa72/sha256sums";
  };
  imagebuilder = {
    sha256 = "d0d93b69faf7be5536e997727a6a3c5ac73376d01e24246a95dee9ab37589fe2";
    filename = "immortalwrt-imagebuilder-24.10.2-mvebu-cortexa72.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-msZA95q8ByJ02jX0geiMWHXOMA3VU49cURc+1StvBkA=";
    name = "mvebu_cortexa72-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa72/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "099753d845dab854505b6c793c687336";
      version = "6.6.93";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
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
    kmods_target = "6.6.93-1-099753d845dab854505b6c793c687336";
    profiles = {
      globalscale_mochabin = {
        device_packages = [ ];
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
        ];
      };
      solidrun_clearfog-pro = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
    };
  };
  kmods."6.6.93-1-099753d845dab854505b6c793c687336" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa72/kmods/6.6.93-1-099753d845dab854505b6c793c687336/";
    sourceInfo = {
      hash = "sha256-/SrEhB/gSAvX0dQl9/HfbdED3hnreMRIat02TGRoTZI=";
      name = "kmods-mvebu_cortexa72-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa72/kmods/6.6.93-1-099753d845dab854505b6c793c687336/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa72/packages/";
    sourceInfo = {
      hash = "sha256-cBoZRc1I34otRLbOArN9j7kkZ3C7YpPfAFaB4+EXHCU=";
      name = "mvebu_cortexa72-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa72/packages/Packages";
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
