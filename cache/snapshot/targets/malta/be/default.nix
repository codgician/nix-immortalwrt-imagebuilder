# snapshot malta/be
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/";
  sha256sums = {
    hash = "sha256-lBj/kKQpgowiX2Co/ATryLtZ84qt0Y2fv/S/JpfA/xw=";
    name = "malta_be-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/sha256sums";
  };
  imagebuilder = {
    sha256 = "0a65962f08d905b04d61cb5a5e7ee7b4772f12a26a2eac39fa6f6d53c15b47a8";
    filename = "immortalwrt-imagebuilder-malta-be.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-q6SmeHNQ9GlENnLxsDoTifiWe8pEPmsC4veCX4IQTrY=";
    name = "malta_be-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "ec33906838f3dab3f340500f79235870";
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
    kmods_target = "6.18.37-1-ec33906838f3dab3f340500f79235870";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.37-1-ec33906838f3dab3f340500f79235870" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/kmods/6.18.37-1-ec33906838f3dab3f340500f79235870/";
    sourceInfo = {
      hash = "sha256-FV3kvnE/+MwKIxgWTymSOsHxF5dA2acT63k5326mL/s=";
      name = "kmods-malta_be-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/kmods/6.18.37-1-ec33906838f3dab3f340500f79235870/packages.adb";
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
      hash = "sha256-Jkk4OQB0j+VYVVZrFeOHgzster9EJ2D8JxGw17z+/G4=";
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
