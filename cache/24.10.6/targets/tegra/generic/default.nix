# 24.10.6 tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-ud3VlfXnUp3yrZPf2iYUnZ+wTeK8MFDjSh6kvUKmk8U=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "ad2bfc4aeadf8dda998550c8266c80f44913ee28a6dc203158b0e70b88b85dcc";
    filename = "immortalwrt-imagebuilder-24.10.6-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-U2Z0vcAJ88xM4W2RKJd+of4NcwXLuYsHaw9GdkZUb6o=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "ba9821b60f74f5cae3bb9feed1ae2d0d";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-ba9821b60f74f5cae3bb9feed1ae2d0d";
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
  kmods."6.6.133-1-ba9821b60f74f5cae3bb9feed1ae2d0d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/tegra/generic/kmods/6.6.133-1-ba9821b60f74f5cae3bb9feed1ae2d0d/";
    sourceInfo = {
      hash = "sha256-qeh3AOa7zNkpe07AAL+ZNkveEZtWgGll4swaxHhg4Y4=";
      name = "kmods-tegra_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/tegra/generic/kmods/6.6.133-1-ba9821b60f74f5cae3bb9feed1ae2d0d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-pnamG4gWKswUfbBtOaO7ERQvARQE+h+vd/xi5UFSt70=";
      name = "tegra_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/tegra/generic/packages/Packages";
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
