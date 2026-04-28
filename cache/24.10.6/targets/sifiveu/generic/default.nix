# 24.10.6 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-dgmN6uQADcUM0hsjM+MyNHqcMKxJe+cnki4YJwzPxcI=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "b92b6a4bc4be925e39f99d2cc08279d0b7be78b2e77834a9c9923c2d58837fa8";
    filename = "immortalwrt-imagebuilder-24.10.6-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-qsdA6SJUu5fYZviWXnshoACRogrIai0S/gPOl8pVIeA=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "9e2f4a64a0a65c8a2c927bb82e924bbb";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-9e2f4a64a0a65c8a2c927bb82e924bbb";
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
  kmods."6.6.133-1-9e2f4a64a0a65c8a2c927bb82e924bbb" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sifiveu/generic/kmods/6.6.133-1-9e2f4a64a0a65c8a2c927bb82e924bbb/";
    sourceInfo = {
      hash = "sha256-YZTX0twGLmhUwJ7bTc0CZ8Eevsnk9znsCHE1LAJAYAw=";
      name = "kmods-sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sifiveu/generic/kmods/6.6.133-1-9e2f4a64a0a65c8a2c927bb82e924bbb/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-3EJikcZy6MV0Z+Uy0OiQxxfvTj+UsDwPMLlaLijnuDQ=";
      name = "sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/sifiveu/generic/packages/Packages";
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
