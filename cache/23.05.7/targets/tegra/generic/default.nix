# 23.05.7 tegra/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-sq3sVUgkPKHilQTB2ee8M2PSyeaActjUc7zbp9d7El0=";
    name = "tegra_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "3558758404f07924c019e5c13dea6bebcc4e5223e0f3e4d9808953ce52221d67";
    filename = "immortalwrt-imagebuilder-23.05.7-tegra-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-IBlw8XeiFbrkwuIvrwGsenZb/lWy50fRudB6Lo+d480=";
    name = "tegra_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "00673b0762e961ecb70ace0edb3da9aa";
      version = "5.15.195";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
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
      "luci"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-00673b0762e961ecb70ace0edb3da9aa";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-UFI4W8QtavAc23z3aVMwKgy9kQXGsB+PwuIupIVNmWs=";
      name = "tegra_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/tegra/generic/packages/Packages";
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
