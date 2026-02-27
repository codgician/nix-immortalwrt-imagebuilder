# 23.05.7 sunxi/cortexa53
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sunxi/cortexa53/";
  sha256sums = {
    hash = "sha256-T2dlTjCgWGxZq2/SEQi4gBjMwtEwDOfb5TXEjkxzVKA=";
    name = "sunxi_cortexa53-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sunxi/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "2181564b3f4c52fa35667ced5267e70fdfc2a86db0c229f1a50f7fea19ca924e";
    filename = "immortalwrt-imagebuilder-23.05.7-sunxi-cortexa53.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-0jo24625T7fYn1wLxpiE1y/ZEKkuXO01M+Rut5gf0ZU=";
    name = "sunxi_cortexa53-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sunxi/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "baeb12c0b157d65c5641792afff3f9af";
      version = "5.15.195";
    };
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
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
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-baeb12c0b157d65c5641792afff3f9af";
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
        ];
      };
      libretech_all-h3-cc-h5 = {
        device_packages = [ ];
      };
      olimex_a64-olinuxino = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      olimex_a64-olinuxino-emmc = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      pine64_pine64-plus = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      pine64_sopine-baseboard = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      xunlong_orangepi-one-plus = {
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sunxi/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-aXYGwle/wbB+KwcavRKosKlP+LuHhETznZ5U1GjMR1M=";
      name = "sunxi_cortexa53-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sunxi/cortexa53/packages/Packages";
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
