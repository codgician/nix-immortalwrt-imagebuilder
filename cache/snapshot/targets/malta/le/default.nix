# snapshot malta/le
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/";
  sha256sums = {
    hash = "sha256-NHtZFviQaQkaB0QAsiKns510HjkysfwDhEosHj3XG/k=";
    name = "malta_le-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/sha256sums";
  };
  imagebuilder = {
    sha256 = "9e2b28d667d01fdefd3f5d96b660490d730c24ef2fc09aaf7a5d27ca3baac698";
    filename = "immortalwrt-imagebuilder-malta-le.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gdQDEC8Myeq50f8aky278uahvWruWZmOsvOoV9uXJnc=";
    name = "malta_le-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "29477861c71c01d833b71c24b89a03c7";
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
    kmods_target = "6.18.44-1-29477861c71c01d833b71c24b89a03c7";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.44-1-29477861c71c01d833b71c24b89a03c7" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/kmods/6.18.44-1-29477861c71c01d833b71c24b89a03c7/";
    sourceInfo = {
      hash = "sha256-DkQwwOFJXm6RucjU6LLdM+gvvL3MV1LUnnI+GgTGFsI=";
      name = "kmods-malta_le-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le/kmods/6.18.44-1-29477861c71c01d833b71c24b89a03c7/packages.adb";
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
      hash = "sha256-CinigCC3XdlaZ998eoV/M29yesnf2bQaehB0owB5nSc=";
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
