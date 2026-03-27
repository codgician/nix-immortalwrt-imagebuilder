# 23.05.2 tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-EpSJSN/FvrOkT0VEu0wLquSsLmooo0P6qFnPc2t/+6k=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "3ed1f74e92622ed02cfce6471fd3300f7620b71a49b61b4d9b3e3fa8c183b547";
    filename = "immortalwrt-imagebuilder-23.05.2-tegra-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-i8G2viRZ4ksAmwxX7KJqW79Kin4iVXpbUvgURcemLD8=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/tegra/generic/profiles.json";
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
      "firewall4"
      "fstools"
      "ipv6helper"
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
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-XQqS1hOYP+rqmhjOEh4k/MKv5JydKOhc7T8N/LeJZ2s=";
      name = "tegra_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/tegra/generic/packages/Packages";
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
