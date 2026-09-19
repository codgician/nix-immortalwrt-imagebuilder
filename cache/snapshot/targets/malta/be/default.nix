# snapshot malta/be
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/";
  sha256sums = {
    hash = "sha256-2Ftl8O1l/amAELtxVYBGKk+3/k105OByNtFE2qAZiBY=";
    name = "malta_be-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/sha256sums";
  };
  imagebuilder = {
    sha256 = "310aa22e77eb8eb883548b39dff4516aeb9b342140aa3e031cef063a23c4a928";
    filename = "immortalwrt-imagebuilder-malta-be.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-wXpVcZVpQa9nEW6cvf5q8ehrF6vsy28/FY6qXrUfOo0=";
    name = "malta_be-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "eed7d370b7d2f948af877a7683cfb642";
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
    kmods_target = "6.18.52-1-eed7d370b7d2f948af877a7683cfb642";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.52-1-eed7d370b7d2f948af877a7683cfb642" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/kmods/6.18.52-1-eed7d370b7d2f948af877a7683cfb642/";
    sourceInfo = {
      hash = "sha256-im+aaVEZvrihRRaLySdCfb96BGWlhcaAIdA86nDMrvg=";
      name = "kmods-malta_be-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/kmods/6.18.52-1-eed7d370b7d2f948af877a7683cfb642/packages.adb";
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
      hash = "sha256-utx7rk9jWrO+eckRQ95XmSFL3L1GIKW3z/grBV7haNI=";
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
