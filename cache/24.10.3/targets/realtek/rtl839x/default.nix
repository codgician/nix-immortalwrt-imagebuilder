# 24.10.3 realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-u+l1V/bdzVlNx2Vkp4pmPepw9dgFPCGa9a9Yy47SoL8=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "58a688eb0ce500a5fff5f7db7e77233a42276926900fe6ef533b9c58aa6222d5";
    filename = "immortalwrt-imagebuilder-24.10.3-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZorYjEpp1L8Qdac2mkiPcHv65ccLRI1zIflVPQm8NHE=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "e2afd609133bce3a20d53c7edc5f2bab";
      version = "6.6.104";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "odhcp6c"
      "opkg"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.104-1-e2afd609133bce3a20d53c7edc5f2bab";
    profiles = {
      d-link_dgs-1210-52 = {
        device_packages = [ ];
      };
      hpe_1920-48g = {
        device_packages = [ ];
      };
      hpe_1920-48g-poe = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-gpiofan"
        ];
      };
      netgear_gs750e = {
        device_packages = [ ];
      };
      panasonic_m48eg-pn28480k = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-lm75"
          "kmod-i2c-mux-pca954x"
          "kmod-thermal"
        ];
      };
      tplink_sg2452p-v4 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-tps23861"
        ];
      };
      zyxel_gs1900-48 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.104-1-e2afd609133bce3a20d53c7edc5f2bab" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl839x/kmods/6.6.104-1-e2afd609133bce3a20d53c7edc5f2bab/";
    sourceInfo = {
      hash = "sha256-zZGtI113hUnQaBqp7ejosbfCjQbpuT0i0wkcN8OVNvg=";
      name = "kmods-realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl839x/kmods/6.6.104-1-e2afd609133bce3a20d53c7edc5f2bab/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-H9JE0TS2Jfm+HyDiU5bbpUR6/UzlhdfhpjFOP8ywvQc=";
      name = "realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl839x/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
