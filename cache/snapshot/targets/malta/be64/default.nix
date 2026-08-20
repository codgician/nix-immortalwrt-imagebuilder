# snapshot malta/be64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/";
  sha256sums = {
    hash = "sha256-XvG6VKMUbfwnI3+G3qY4qh2Km9QMEF+72RKWno9hlpQ=";
    name = "malta_be64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/sha256sums";
  };
  imagebuilder = {
    sha256 = "c1616db0c5cef0ceab1aebb3d8b9f327ffd9478c0e5b7297c329699c366ee34a";
    filename = "immortalwrt-imagebuilder-malta-be64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-qO6nY/27DH/x/qgkVCzX1AdaVTOHWp8Mvi7jZwN22uY=";
    name = "malta_be64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_mips64r2";
    linux_kernel = {
      release = "1";
      vermagic = "569b38fa41adb2c55b34da38b73da3df";
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
    kmods_target = "6.18.44-1-569b38fa41adb2c55b34da38b73da3df";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.44-1-569b38fa41adb2c55b34da38b73da3df" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/kmods/6.18.44-1-569b38fa41adb2c55b34da38b73da3df/";
    sourceInfo = {
      hash = "sha256-ZvOgEFh/qSR4ybn3fKaHQDEu+fDGc6hoocmPiAsg2qQ=";
      name = "kmods-malta_be64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/kmods/6.18.44-1-569b38fa41adb2c55b34da38b73da3df/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/packages/";
    sourceInfo = {
      hash = "sha256-+UOUyGjpMDAFJxDdHhRTUssVFV+7DvktNbxFs7R6oWw=";
      name = "malta_be64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips64_mips64r2";
  feeds = import ./../../../packages/mips64_mips64r2.nix;
}
