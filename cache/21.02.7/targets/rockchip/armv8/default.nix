# 21.02.7 rockchip/armv8
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/rockchip/armv8/";
  sha256sums = {
    hash = "sha256-e4fWr7owoZTz4T72NUHR2tSlUsUrdlK2Pkqg0ZHk1Ao=";
    name = "rockchip_armv8-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/rockchip/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "71486cc7e9abb99795ed0d0921e5f25ba69bf1ac811b017a81720bcb9ec6cda8";
    filename = "immortalwrt-imagebuilder-21.02.7-rockchip-armv8.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-nXRR+aE5jIMyoEr8cXjYZQD9T/vyQy7n2hjdl6ja6kU=";
    name = "rockchip_armv8-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/rockchip/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
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
      "ethtool"
      "fdisk"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
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
      firefly_roc-rk3328-cc = {
        device_packages = [ ];
      };
      friendlyarm_nanopi-r2c = {
        device_packages = [ "kmod-usb-net-rtl8152" ];
      };
      friendlyarm_nanopi-r2s = {
        device_packages = [ "kmod-usb-net-rtl8152" ];
      };
      friendlyarm_nanopi-r4s = {
        device_packages = [
          "kmod-r8168"
          "-urngd"
        ];
      };
      friendlyarm_nanopi-r4se = {
        device_packages = [
          "kmod-r8168"
          "-urngd"
        ];
      };
      pine64_rockpro64 = {
        device_packages = [ "-urngd" ];
      };
      radxa_rock-pi-4 = {
        device_packages = [ "-urngd" ];
      };
      xunlong_orangepi-r1-plus = {
        device_packages = [ "kmod-usb-net-rtl8152" ];
      };
      xunlong_orangepi-r1-plus-lts = {
        device_packages = [ "kmod-usb-net-rtl8152" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/rockchip/armv8/packages/";
    sourceInfo = {
      hash = "sha256-FKKpAGFjMqaoGjGWx7IEGgAEi+SQYQlsR22X9cmkeq4=";
      name = "rockchip_armv8-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/rockchip/armv8/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_generic";
  feeds = import ./../../../packages/aarch64_generic.nix;
}
