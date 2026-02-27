# 24.10.5 tegra/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-vP4Yyhug5DCZ6QdMAng+2UeQEOU0ZFHSHFQYauV+QmY=";
    name = "tegra_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "8266ac23738252c723f2c0939f3227ca4d85e719cb453a25b788f8626447d250";
    filename = "immortalwrt-imagebuilder-24.10.5-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Hq9ACdwpXBNdwUMI9bnp1m/VucaUpy6oWKg5AUJ+ul8=";
    name = "tegra_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "ba9821b60f74f5cae3bb9feed1ae2d0d";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-ba9821b60f74f5cae3bb9feed1ae2d0d";
    profiles = {
      compulab_trimslice = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-r8169"
          "kmod-rt2800-usb"
          "kmod-rtc-em3027"
          "kmod-usb-hid"
          "kmod-usb-storage"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.122-1-ba9821b60f74f5cae3bb9feed1ae2d0d" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/tegra/generic/kmods/6.6.122-1-ba9821b60f74f5cae3bb9feed1ae2d0d/";
    sourceInfo = {
      hash = "sha256-bz2jo2O084QUncXMc/JBDJ3FXDcx1uOKJSqGy5BZxjk=";
      name = "kmods-tegra_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/tegra/generic/kmods/6.6.122-1-ba9821b60f74f5cae3bb9feed1ae2d0d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-t7yQpMmsphOpe5HNCGHZ4rNSLm+XN+IOGGPya2AD1TY=";
      name = "tegra_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/tegra/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a9_vfpv3-d16";
  feeds = import ./../../../packages/arm_cortex-a9_vfpv3-d16.nix;
}
