# snapshot malta/be64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/";
  sha256sums = {
    hash = "sha256-5ndaMHRZfks1E49Y4ufGwyAYDIBJmU7hyLnr6zTxep0=";
    name = "malta_be64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/sha256sums";
  };
  imagebuilder = {
    sha256 = "ceacc0c2f369befa973c2442d2a3cce9a6987cb801d4145cf48dee9d79d43819";
    filename = "immortalwrt-imagebuilder-malta-be64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ICy9baUSjp83kyWLyJbOt/jhxkpnNvEtIxG8oIwOXP0=";
    name = "malta_be64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_mips64r2";
    linux_kernel = {
      release = "1";
      vermagic = "2f981b47f765e25beee7811c4240887c";
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
    kmods_target = "6.18.52-1-2f981b47f765e25beee7811c4240887c";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.52-1-2f981b47f765e25beee7811c4240887c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/kmods/6.18.52-1-2f981b47f765e25beee7811c4240887c/";
    sourceInfo = {
      hash = "sha256-m79dII8c74D3FnN0Hr5GbgUyoCi9OHAJm3GON6++3W8=";
      name = "kmods-malta_be64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/kmods/6.18.52-1-2f981b47f765e25beee7811c4240887c/packages.adb";
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
      hash = "sha256-3NvBZA0qn0NbSCMdwjSIhsLC0djnz/DS3Fxm0a+maWU=";
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
