# 24.10.6 sunxi/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sunxi/cortexa53/";
  sha256sums = {
    hash = "sha256-1uYMBlZpJ/6ArbFGBQzrZJoRpIKzPxFETx5g19nXpWQ=";
    name = "sunxi_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sunxi/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "b3feef7f1007cd3442144a192d067e47c4a18e8746eee120098df6e36440bc05";
    filename = "immortalwrt-imagebuilder-24.10.6-sunxi-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9nXqPzQiAn4JZEgArD2IzrMCQ0cvHAMiTFSWRf68qow=";
    name = "sunxi_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sunxi/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "a9c3989248061c2300c9770d3c403256";
      version = "6.6.133";
    };
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "block-mount"
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
      "luci-app-cpufreq"
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
    kmods_target = "6.6.133-1-a9c3989248061c2300c9770d3c403256";
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
      xunlong_orangepi-zero2 = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero3 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.133-1-a9c3989248061c2300c9770d3c403256" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sunxi/cortexa53/kmods/6.6.133-1-a9c3989248061c2300c9770d3c403256/";
    sourceInfo = {
      hash = "sha256-yyGOvI06pItcepAJN0WobRE68H+YypMSrTFcl3xtzsE=";
      name = "kmods-sunxi_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sunxi/cortexa53/kmods/6.6.133-1-a9c3989248061c2300c9770d3c403256/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sunxi/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-Mo+BoojLaMlPcyCLIZJ8YKMy0UQUlwoX6VIAV4X1deY=";
      name = "sunxi_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sunxi/cortexa53/packages/Packages";
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
