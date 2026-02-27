# 21.02.7 tegra/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-9UYyTIOe8uQtsQoagEFikIfgBOofh4JBSUQIy2OhKLY=";
    name = "tegra_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/tegra/generic/sha256sums";
  };
  imagebuilder = null;
  profiles.sourceInfo = {
    hash = "sha256-pnkV5lHs3FCIcoeKM7M7E4XxcaYtah4XPyqjdxVt6Bg=";
    name = "tegra_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      compulab_trimslice = {
        device_packages = [
          "kmod-r8169"
          "kmod-rt2800-usb"
          "kmod-rtc-em3027"
          "kmod-usb-storage"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-jusywRIcLrtCSIpiSjl5ydNrBwiJrt6HtQbgqxFmwPA=";
      name = "tegra_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/tegra/generic/packages/Packages";
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
