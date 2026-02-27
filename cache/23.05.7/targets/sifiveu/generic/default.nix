# 23.05.7 sifiveu/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-9arxzDBYy4ALcmIOl9YYa3MA0phRoy8FNiCUMHymrAU=";
    name = "sifiveu_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "9e3f55c12888a666fdc03e2834e8c25b2c11742807b20db8d6a81be76e739221";
    filename = "immortalwrt-imagebuilder-23.05.7-sifiveu-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-gbWp+b/axJDUYL6ib4X9MTsadls0OIHmctaL+XSOo+c=";
    name = "sifiveu_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "41faaeab8a10ca0c6e513acd9e4ac60d";
      version = "5.15.195";
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
    kmods_target = "5.15.195-1-41faaeab8a10ca0c6e513acd9e4ac60d";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-DsXMx46cCbSDx7cpL6I4s9BIpLzsYaGDUUjcBHTl6nc=";
      name = "sifiveu_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/sifiveu/generic/packages/Packages";
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
