# snapshot tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-zHm8aIsSrIXDADxJU5jCFoudltCDpOPVBx5UyrZ5dLk=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "8fdd1f48ea94d4dd7f646f8237ca166adf8901490a22182c973f8867242242e6";
    filename = "immortalwrt-imagebuilder-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-jKzUlM7gL9C4aPWsUM70lUBJIU4ET+gPPDu44+Jhr0w=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "b95bb7405e3edc675dfec0e94bdd5716";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.74-1-b95bb7405e3edc675dfec0e94bdd5716";
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
        ];
      };
    };
  };
  kmods."6.12.74-1-b95bb7405e3edc675dfec0e94bdd5716" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/kmods/6.12.74-1-b95bb7405e3edc675dfec0e94bdd5716/";
    sourceInfo = {
      hash = "sha256-t6o1Hjr5zq9jR1Rj4SO0H36g8dWKORWw3kmM106b3t4=";
      name = "kmods-tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/kmods/6.12.74-1-b95bb7405e3edc675dfec0e94bdd5716/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-72yIZTip7OHKjWx5ks/K7Gopgxcqb8dr537dtE+HEZ0=";
      name = "tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/packages/packages.adb";
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
