# snapshot malta/be
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/";
  sha256sums = {
    hash = "sha256-sRpHKlhJjOuEFy3sZDgyVQyEs/3bumNjQts+G/C9Djk=";
    name = "malta_be-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/sha256sums";
  };
  imagebuilder = {
    sha256 = "08f3f180415e465d3d907a8d9993fe260d1d6dd31dba02b23bc6c6214b6ac7e5";
    filename = "immortalwrt-imagebuilder-malta-be.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-MRdS0OilPFvqVFhZqUH3medm/Fepc/vi/Y+mY1ecXs0=";
    name = "malta_be-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "71959b2b68a4d396c790c712772b84d2";
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
    kmods_target = "6.18.44-1-71959b2b68a4d396c790c712772b84d2";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.44-1-71959b2b68a4d396c790c712772b84d2" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/kmods/6.18.44-1-71959b2b68a4d396c790c712772b84d2/";
    sourceInfo = {
      hash = "sha256-AM0O6UyQMwob/eBM5FLrNcCmLT/NabHQ5m/ThPwvCro=";
      name = "kmods-malta_be-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/kmods/6.18.44-1-71959b2b68a4d396c790c712772b84d2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/packages/";
    sourceInfo = {
      hash = "sha256-GFFoSDLV4ClB4E/C9K9fmGTNEvXsJO85fIh/mhnE4BM=";
      name = "malta_be-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
