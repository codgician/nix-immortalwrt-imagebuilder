# 24.10.2 realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-5rgmqZrCEP0i0HIO0GRqSzm/OftDhRtHBZbLlMVNQ/I=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "ef2a63e892fd43d702c83bf0bd00ec77f2d32f7cf10e1475a24caaad8f51dbe4";
    filename = "immortalwrt-imagebuilder-24.10.2-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-KQ0JOPm0j18Q4uTmUNpbUUFK7bgAPjTQ4dJ4a3ybNTA=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "e2afd609133bce3a20d53c7edc5f2bab";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-e2afd609133bce3a20d53c7edc5f2bab";
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
  kmods."6.6.93-1-e2afd609133bce3a20d53c7edc5f2bab" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl839x/kmods/6.6.93-1-e2afd609133bce3a20d53c7edc5f2bab/";
    sourceInfo = {
      hash = "sha256-HXUehtc9E9MmBtuXEasoWsckY3Aiice259CB98TbxEw=";
      name = "kmods-realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl839x/kmods/6.6.93-1-e2afd609133bce3a20d53c7edc5f2bab/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-yAoAccga4ZUnX4BXaIyF+aWIb2eIC7liwDl1lV9tIbY=";
      name = "realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl839x/packages/Packages";
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
