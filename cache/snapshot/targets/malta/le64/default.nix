# snapshot malta/le64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/";
  sha256sums = {
    hash = "sha256-uQCTR4wPqaH4PTXXuBbFeBDZqXCIzXjEaBNin07dwnE=";
    name = "malta_le64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/sha256sums";
  };
  imagebuilder = {
    sha256 = "97953497adb3e10a99a688f46d67cf5fcc9a47ae236eb3c17e5fcc88509b3548";
    filename = "immortalwrt-imagebuilder-malta-le64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-w+Mv22MiKmQQd2K+IXB3q73R8mv9vTYTMKWV+nXCH6w=";
    name = "malta_le64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64el_mips64r2";
    linux_kernel = {
      release = "1";
      vermagic = "b4a7573dfd55afd5161f1361a6ca70e4";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-b4a7573dfd55afd5161f1361a6ca70e4";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.77-1-b4a7573dfd55afd5161f1361a6ca70e4" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/kmods/6.12.77-1-b4a7573dfd55afd5161f1361a6ca70e4/";
    sourceInfo = {
      hash = "sha256-XQ8YYS0Ep8HzHR8rMtpPfnDGN2qjCvSAuqOsanLJ/UI=";
      name = "kmods-malta_le64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/kmods/6.12.77-1-b4a7573dfd55afd5161f1361a6ca70e4/packages.adb";
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
      hash = "sha256-BYCweaVeB+rnhDUzJQRNuIJDRHX4MG7BmI/hRi6xg48=";
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
