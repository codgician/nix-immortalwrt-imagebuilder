# 24.10.4 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-YmKXtzGoqOz9KrxERgpy3B77sWCaFmxc5uUO1v0H9UI=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d900e75d80e2deb2417a093afc5c06c20b263ce1d5f843e0a388d75e9eb588c1";
    filename = "immortalwrt-imagebuilder-24.10.4-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-X5wVdhLL6d96yHhXN2TYz8eWit/hQ4c+3V8pbCQ1iEQ=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "2bf311bcf39772f0a3bf0077cdc97a10";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-2bf311bcf39772f0a3bf0077cdc97a10";
    profiles = {
      sifive_unleashed = {
        device_packages = [ ];
      };
      sifive_unmatched = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-hwmon-lm90"
        ];
      };
    };
  };
  kmods."6.6.110-1-2bf311bcf39772f0a3bf0077cdc97a10" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sifiveu/generic/kmods/6.6.110-1-2bf311bcf39772f0a3bf0077cdc97a10/";
    sourceInfo = {
      hash = "sha256-5Bf7oP4PzGs1my/z6xgTcfrzDACNRjIbj5jnnkygUVQ=";
      name = "kmods-sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sifiveu/generic/kmods/6.6.110-1-2bf311bcf39772f0a3bf0077cdc97a10/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-dd1uqlemxSePj2QTPV/d6b6ngTgIDJXIdy9bv7dJ+9g=";
      name = "sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/sifiveu/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_riscv64";
  feeds = import ./../../../packages/riscv64_riscv64.nix;
}
