# 24.10.3 sunxi/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa53/";
  sha256sums = {
    hash = "sha256-9vHcePBs+6zoPFu/g4DOgEkB20Us+/eOwai04aWqmOA=";
    name = "sunxi_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "9ea7b28e0cc0caaa695969dd1b04661a205cc8b0101a2d5d7904b43eed90c02e";
    filename = "immortalwrt-imagebuilder-24.10.3-sunxi-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HP4hFN/BYPsF0vnn0Zi8m+nLxhEWUfT2E4uGPBnpCew=";
    name = "sunxi_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "6a04520dbd999af3fc144cd142d50144";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-6a04520dbd999af3fc144cd142d50144";
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
  kmods."6.6.104-1-6a04520dbd999af3fc144cd142d50144" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa53/kmods/6.6.104-1-6a04520dbd999af3fc144cd142d50144/";
    sourceInfo = {
      hash = "sha256-Dtz7m4OAbx5+Jv6H6b+pM5DHSB9nfk+L+NhuIL7yDlg=";
      name = "kmods-sunxi_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa53/kmods/6.6.104-1-6a04520dbd999af3fc144cd142d50144/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-ONHUmzH3idicdttW5cH5n7RoXNj/T/+9RrJG6sMw0WI=";
      name = "sunxi_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa53/packages/Packages";
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
