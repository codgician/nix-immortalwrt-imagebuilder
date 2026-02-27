# 24.10.5 realtek/rtl839x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-C/GLoxNztT5Zy3rzWUm/Nbotab0HH6sQBe1OJkVpCFA=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "76ab6aaa210bb49919287e47912ceeacb51f90851281e643b788f36290fcbdfc";
    filename = "immortalwrt-imagebuilder-24.10.5-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OSuRJpEJMBVCQUBat4iNe2p5lHfbBulkJHYlMzXYIYM=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "49d74398db7b9ec04ad1169cdba3303c";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-49d74398db7b9ec04ad1169cdba3303c";
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
  kmods."6.6.122-1-49d74398db7b9ec04ad1169cdba3303c" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl839x/kmods/6.6.122-1-49d74398db7b9ec04ad1169cdba3303c/";
    sourceInfo = {
      hash = "sha256-RcpktZtcEIE+B3HGGPqSWBuT07T5Ifm+5/ncZB+IAY8=";
      name = "kmods-realtek_rtl839x-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl839x/kmods/6.6.122-1-49d74398db7b9ec04ad1169cdba3303c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-9oLtP4/aTxzPD86He4MDm4D/OJgY2g0Nueko86TS5zI=";
      name = "realtek_rtl839x-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl839x/packages/Packages";
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
