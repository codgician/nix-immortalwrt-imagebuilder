# snapshot tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-RvK0AaqJ87/MR6uoG1X6Bcf6/NJj4LuAqbKGETk/3YM=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "69bf82156506f7ca6c3bc1913c519ef9529d47f64d76360b44bdaf5ef38d75c1";
    filename = "immortalwrt-imagebuilder-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-TQcu13+yKO/2Ut0tQeYX+A1hA6dEoUVzWxChm5LS/eo=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "7183c2029b4fc36e48959cb3e827ba7a";
      version = "6.18.55";
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
      "video-support"
    ];
    kmods_target = "6.18.55-1-7183c2029b4fc36e48959cb3e827ba7a";
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
  kmods."6.18.55-1-7183c2029b4fc36e48959cb3e827ba7a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/kmods/6.18.55-1-7183c2029b4fc36e48959cb3e827ba7a/";
    sourceInfo = {
      hash = "sha256-HhTJlUmdHYDX5zpKCzphXRHLfi9MpQSBAPgjH1nkhSo=";
      name = "kmods-tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/kmods/6.18.55-1-7183c2029b4fc36e48959cb3e827ba7a/packages.adb";
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
      hash = "sha256-Dl1AicRoINDT4y7Kl2oV79Aw1IgGbCHNcuN/Q6pV0MY=";
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
