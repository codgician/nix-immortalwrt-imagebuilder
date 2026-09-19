# snapshot malta/le64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/";
  sha256sums = {
    hash = "sha256-v3wmY+FrTVwPq2QBsv6roX3MqSZGk6XYQhSaHfRUMXM=";
    name = "malta_le64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/sha256sums";
  };
  imagebuilder = {
    sha256 = "38262d699b2b9a6c5e5c20f225f459280602b1185b5679b451fbf99033ba4036";
    filename = "immortalwrt-imagebuilder-malta-le64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-wAfct17XI2s1AlRk0GQFR8x8wiLdCltqjXxEwtz2tVg=";
    name = "malta_le64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64el_mips64r2";
    linux_kernel = {
      release = "1";
      vermagic = "362272d962605f349f066a43331abfaa";
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
    kmods_target = "6.18.52-1-362272d962605f349f066a43331abfaa";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.52-1-362272d962605f349f066a43331abfaa" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/kmods/6.18.52-1-362272d962605f349f066a43331abfaa/";
    sourceInfo = {
      hash = "sha256-naxO1iKW5a6BJ1ElhQKYsuVY09H31howjGYXDnkUlVs=";
      name = "kmods-malta_le64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/kmods/6.18.52-1-362272d962605f349f066a43331abfaa/packages.adb";
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
      hash = "sha256-F9/JkLmvnk1OoTQSuBbk/TWkfXxOxI92xvb67c8oq9o=";
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
