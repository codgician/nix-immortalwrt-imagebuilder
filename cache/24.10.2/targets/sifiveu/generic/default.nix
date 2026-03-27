# 24.10.2 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-ZqKAKk0hTulooejwK6Br8CjB4gfnkpUNTXGrbcXIPL8=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "a62d9d8c968333d79daf626d4904bf4110474249dd958f34614ca867325368c5";
    filename = "immortalwrt-imagebuilder-24.10.2-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9T8KXtE/SFxFy0Yveq5s0+1/H3zzXJ4DTXyPVhuaLr8=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "fbbf24c5ec9bf8968f3f8b481e1d7d7d";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-fbbf24c5ec9bf8968f3f8b481e1d7d7d";
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
  kmods."6.6.93-1-fbbf24c5ec9bf8968f3f8b481e1d7d7d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sifiveu/generic/kmods/6.6.93-1-fbbf24c5ec9bf8968f3f8b481e1d7d7d/";
    sourceInfo = {
      hash = "sha256-KwE4Fwo7yinK9btl20BEK1B1gAtzzMwscJDwY/SJ/GI=";
      name = "kmods-sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sifiveu/generic/kmods/6.6.93-1-fbbf24c5ec9bf8968f3f8b481e1d7d7d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-yik4g2q0ZaKgWhnTLclsXR29DPb3zYMJPSTCDtlHSg8=";
      name = "sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/sifiveu/generic/packages/Packages";
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
