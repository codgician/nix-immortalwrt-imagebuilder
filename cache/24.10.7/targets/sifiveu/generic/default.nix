# 24.10.7 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-q/t3eJQTGwpO2400DqnahfWcr7hNPNw/wdixsnW87pM=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "6066b69f757237c14a9098942437f8fabebe65cc2d6e397d0e793c36ac3260ff";
    filename = "immortalwrt-imagebuilder-24.10.7-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-lUi0GEWySLKK1s2IhWoWpxqk84hvoaAsjm5ccTn8S+A=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "9e2f4a64a0a65c8a2c927bb82e924bbb";
      version = "6.6.159";
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
    kmods_target = "6.6.159-1-9e2f4a64a0a65c8a2c927bb82e924bbb";
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
  kmods."6.6.159-1-9e2f4a64a0a65c8a2c927bb82e924bbb" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sifiveu/generic/kmods/6.6.159-1-9e2f4a64a0a65c8a2c927bb82e924bbb/";
    sourceInfo = {
      hash = "sha256-jzJiJjbqesW3O9yBmV9V07sKV4crbz3HFSLX4IcIRRI=";
      name = "kmods-sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sifiveu/generic/kmods/6.6.159-1-9e2f4a64a0a65c8a2c927bb82e924bbb/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-/4Q7CcaU7zZlGyqhgbFuLIWaLMiiQv6uKVOL4HcnXes=";
      name = "sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/sifiveu/generic/packages/Packages";
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
