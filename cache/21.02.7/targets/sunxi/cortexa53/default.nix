# 21.02.7 sunxi/cortexa53
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa53/";
  sha256sums = {
    hash = "sha256-HlY+YTYlFt4o+AeETp0uldKI8RjX3H3XKPvjRctwHT0=";
    name = "sunxi_cortexa53-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "9b9db0104ddfea3c2776f9f14c008c0970247bc138ac7d9661056b5958df7f48";
    filename = "immortalwrt-imagebuilder-21.02.7-sunxi-cortexa53.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-W+2cQNw6nKs+/Y0U/qD9XZ7HA7HuUcOIBtplJGIq7cY=";
    name = "sunxi_cortexa53-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = null;
    default_packages = [
      "autocore-arm"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      friendlyarm_nanopi-neo-plus2 = {
        device_packages = [ ];
      };
      friendlyarm_nanopi-neo2 = {
        device_packages = [ ];
      };
      friendlyarm_nanopi-r1s-h5 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-usb-net-rtl8152"
          "kmod-rtl8189es"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      libretech_all-h3-cc-h5 = {
        device_packages = [ ];
      };
      olimex_a64-olinuxino = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bs-firmware"
        ];
      };
      olimex_a64-olinuxino-emmc = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bs-firmware"
        ];
      };
      pine64_pine64-plus = {
        device_packages = [ ];
      };
      pine64_sopine-baseboard = {
        device_packages = [ ];
      };
      xunlong_orangepi-pc2 = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero-plus = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-+fOURBWWGNAMgxbok+XW2/6x1Cwx/cyKi3Uj6wyr2wI=";
      name = "sunxi_cortexa53-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa53/packages/Packages";
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
