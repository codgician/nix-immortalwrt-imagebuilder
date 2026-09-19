# snapshot malta/le
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/";
  sha256sums = {
    hash = "sha256-2nAvg9hIYyvAf4gooD9yDfziyLXFtS59J6JzH5jKZYo=";
    name = "malta_le-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/sha256sums";
  };
  imagebuilder = {
    sha256 = "ce68c81602c76bae2f6f8fc121ff704be9445d0d131997010fc034c246e57b1d";
    filename = "immortalwrt-imagebuilder-malta-le.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-fkQypqtjV8WO2fUjeU4faOLG8GL/IMeOOef4edCtaaw=";
    name = "malta_le-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "7f0f4e6307b146c44ebd8f98ab1af82a";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-7f0f4e6307b146c44ebd8f98ab1af82a";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.52-1-7f0f4e6307b146c44ebd8f98ab1af82a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/kmods/6.18.52-1-7f0f4e6307b146c44ebd8f98ab1af82a/";
    sourceInfo = {
      hash = "sha256-b6T2jrNTwT1NqZ4/+4KnUU50A9f/H5oNFEvyvQkkcPk=";
      name = "kmods-malta_le-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/kmods/6.18.52-1-7f0f4e6307b146c44ebd8f98ab1af82a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/packages/";
    sourceInfo = {
      hash = "sha256-x8RBF5CojVNDm3MOpBlRK52Ifnm3ZEVY71cZGks9jQI=";
      name = "malta_le-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_24kc";
  feeds = import ./../../../packages/mipsel_24kc.nix;
}
