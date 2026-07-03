# snapshot malta/le64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/";
  sha256sums = {
    hash = "sha256-oIBh4PB2zerHJY5JHpy0sohw8xZoxE8pHOskOFrjeQo=";
    name = "malta_le64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/sha256sums";
  };
  imagebuilder = {
    sha256 = "4d39359037f8da0e16c2def9353d82fc857424bf33e5bd0f4efadd3c5e183f6a";
    filename = "immortalwrt-imagebuilder-malta-le64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zoh0EKGH+lfv1dwjpFuRVrtM24L3GJigl8yezhsfSZs=";
    name = "malta_le64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64el_mips64r2";
    linux_kernel = {
      release = "1";
      vermagic = "775341d2e3d8bcd0daab53554e9f44b2";
      version = "6.18.37";
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
    kmods_target = "6.18.37-1-775341d2e3d8bcd0daab53554e9f44b2";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.37-1-775341d2e3d8bcd0daab53554e9f44b2" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/kmods/6.18.37-1-775341d2e3d8bcd0daab53554e9f44b2/";
    sourceInfo = {
      hash = "sha256-FGe+nWRvnQ5VBKJU1XE1EGHhUJVto2BMmVXHRehf7MU=";
      name = "kmods-malta_le64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/kmods/6.18.37-1-775341d2e3d8bcd0daab53554e9f44b2/packages.adb";
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
      hash = "sha256-2jm7HYbwUBU/mzn3K2Zq5Fuj0aeeyXxY0L7C/dPCX3A=";
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
