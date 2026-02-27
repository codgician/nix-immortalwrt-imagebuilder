# 24.10.5 realtek/rtl838x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl838x/";
  sha256sums = {
    hash = "sha256-w9qPcDoNMBGp27H4Pxmb4kZBgbskgkSc+EPyjYgu9UM=";
    name = "realtek_rtl838x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl838x/sha256sums";
  };
  imagebuilder = {
    sha256 = "96d78183b71e9ddc2cd39cfed34f6c3cc4c4a56d9634a09a15e51375ced49911";
    filename = "immortalwrt-imagebuilder-24.10.5-realtek-rtl838x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-83z6OpEHXfq5pR3fe6HM7PrVX03zf800+Fl4Wj4YlMM=";
    name = "realtek_rtl838x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl838x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_4kec";
    linux_kernel = {
      release = "1";
      vermagic = "e6ab20cfe9c9c7be5d1aceca13d7435c";
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
    kmods_target = "6.6.122-1-e6ab20cfe9c9c7be5d1aceca13d7435c";
    profiles = {
      allnet_all-sg8208m = {
        device_packages = [ ];
      };
      apresia_aplgs120gtss = {
        device_packages = [ ];
      };
      d-link_dgs-1210-10mp-f = {
        device_packages = [ "realtek-poe" ];
      };
      d-link_dgs-1210-10p = {
        device_packages = [ "realtek-poe" ];
      };
      d-link_dgs-1210-16 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-20 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-28 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-28mp-f = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-lm63"
        ];
      };
      d-link_dgs-1210-28p-f = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-lm63"
        ];
      };
      engenius_ews2910p = {
        device_packages = [ "realtek-poe" ];
      };
      hpe_1920-16g = {
        device_packages = [ ];
      };
      hpe_1920-24g = {
        device_packages = [ ];
      };
      hpe_1920-24g-poe-180w = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-gpiofan"
        ];
      };
      hpe_1920-24g-poe-370w = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-gpiofan"
        ];
      };
      hpe_1920-8g = {
        device_packages = [ ];
      };
      hpe_1920-8g-poe-180w = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-gpiofan"
        ];
      };
      hpe_1920-8g-poe-65w = {
        device_packages = [ "realtek-poe" ];
      };
      inaba_aml2-17gp = {
        device_packages = [ ];
      };
      iodata_bsh-g24mb = {
        device_packages = [ ];
      };
      linksys_lgs310c = {
        device_packages = [ ];
      };
      netgear_gs108t-v3 = {
        device_packages = [ ];
      };
      netgear_gs110tpp-v1 = {
        device_packages = [ "realtek-poe" ];
      };
      netgear_gs110tup-v1 = {
        device_packages = [ "realtek-poe" ];
      };
      netgear_gs308t-v1 = {
        device_packages = [ ];
      };
      netgear_gs310tp-v1 = {
        device_packages = [ "realtek-poe" ];
      };
      panasonic_m16eg-pn28160k = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      panasonic_m24eg-pn28240k = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      panasonic_m8eg-pn28080k = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      tplink_sg2008p-v1 = {
        device_packages = [ "kmod-hwmon-tps23861" ];
      };
      tplink_sg2210p-v3 = {
        device_packages = [ "kmod-hwmon-tps23861" ];
      };
      tplink_t1600g-28ts-v3 = {
        device_packages = [ ];
      };
      zyxel_gs1900-10hp = {
        device_packages = [ "realtek-poe" ];
      };
      zyxel_gs1900-16 = {
        device_packages = [ ];
      };
      zyxel_gs1900-24-v1 = {
        device_packages = [ ];
      };
      zyxel_gs1900-24e = {
        device_packages = [ ];
      };
      zyxel_gs1900-24ep = {
        device_packages = [ "realtek-poe" ];
      };
      zyxel_gs1900-24hp-v1 = {
        device_packages = [ "realtek-poe" ];
      };
      zyxel_gs1900-24hp-v2 = {
        device_packages = [ "realtek-poe" ];
      };
      zyxel_gs1900-8-v1 = {
        device_packages = [ ];
      };
      zyxel_gs1900-8-v2 = {
        device_packages = [ ];
      };
      zyxel_gs1900-8hp-v1 = {
        device_packages = [ "realtek-poe" ];
      };
      zyxel_gs1900-8hp-v2 = {
        device_packages = [ "realtek-poe" ];
      };
    };
  };
  kmods."6.6.122-1-e6ab20cfe9c9c7be5d1aceca13d7435c" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl838x/kmods/6.6.122-1-e6ab20cfe9c9c7be5d1aceca13d7435c/";
    sourceInfo = {
      hash = "sha256-suaCBtgGNPF9/AXhUtoYfjX8qlhDBF1MiXoRvrA4bjI=";
      name = "kmods-realtek_rtl838x-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl838x/kmods/6.6.122-1-e6ab20cfe9c9c7be5d1aceca13d7435c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl838x/packages/";
    sourceInfo = {
      hash = "sha256-NX1xMHsPMmrUVBKB9rF+16Yglb/g12HNxYrrSk7SwGM=";
      name = "realtek_rtl838x-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl838x/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_4kec";
  feeds = import ./../../../packages/mips_4kec.nix;
}
