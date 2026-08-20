# snapshot malta/le64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/";
  sha256sums = {
    hash = "sha256-8nEESoPcfy0nbtbfB99X1FbjbNEaT3lyvy367E3fea4=";
    name = "malta_le64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/sha256sums";
  };
  imagebuilder = {
    sha256 = "a0fcb3090f4949e7cf045f0a559a5aa49d969138488f5345f1140833eb01803b";
    filename = "immortalwrt-imagebuilder-malta-le64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2gKvvFaVsHqdLXE99TqqSKQ9DHkZe+uA6CuEJJWe8CI=";
    name = "malta_le64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64el_mips64r2";
    linux_kernel = {
      release = "1";
      vermagic = "8e041422851d4d3af6711c5a4446cb10";
      version = "6.18.44";
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
      "kmod-mac80211-hwsim"
      "kmod-nft-offload"
      "kmod-pcnet32"
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
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.18.44-1-8e041422851d4d3af6711c5a4446cb10";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.44-1-8e041422851d4d3af6711c5a4446cb10" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/kmods/6.18.44-1-8e041422851d4d3af6711c5a4446cb10/";
    sourceInfo = {
      hash = "sha256-OcREEn3ccwTf9U63romwOW4m1vSSg94DEs9Y16pJRtw=";
      name = "kmods-malta_le64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/kmods/6.18.44-1-8e041422851d4d3af6711c5a4446cb10/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/packages/";
    sourceInfo = {
      hash = "sha256-hFx5geDHCohOfjMtKxzI8/xN1PrQmGKMXIHaRKqUc9o=";
      name = "malta_le64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips64el_mips64r2";
  feeds = import ./../../../packages/mips64el_mips64r2.nix;
}
