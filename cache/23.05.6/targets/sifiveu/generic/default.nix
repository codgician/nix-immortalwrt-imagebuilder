# 23.05.6 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-CQXNnll7O2GZIc2pm+d4vAfDTSKlpQbvzAnrH29gpag=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "5e2ba98185b3c34719e23a4b6fb3d350cf3d3183e24b7cae0a3609b1c6c4e176";
    filename = "immortalwrt-imagebuilder-23.05.6-sifiveu-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-JxrtxZ6DYRI+D+p/oXA/s0IbD+pLFPwq/zg3WQCznEg=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "41faaeab8a10ca0c6e513acd9e4ac60d";
      version = "5.15.189";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.189-1-41faaeab8a10ca0c6e513acd9e4ac60d";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-mb+kIOQdqodYGuOpVKAd7UfqWzT/u2GZWOM1twOzQds=";
      name = "sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/sifiveu/generic/packages/Packages";
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
