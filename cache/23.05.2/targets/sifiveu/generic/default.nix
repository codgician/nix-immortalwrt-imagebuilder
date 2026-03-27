# 23.05.2 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-zNwm3TsvI6OlnymkyKHyReM05sgY+mrCWtAwfw3L/Rc=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "675e4317c57aef8f2e2198f45675dcbeaed8208d085d342f21e26d0430c1134b";
    filename = "immortalwrt-imagebuilder-23.05.2-sifiveu-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-QhzyjuWVT8/WbemkawxHf1bmBr1/yrLQfUfed8L7fIw=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = null;
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
      "ipv6helper"
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
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
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
    kmods_target = "null-null-null";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-Y9sQ9lyD8XxanAwYQN+82oxC8BpaX1L99zjM7ImG0ew=";
      name = "sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/sifiveu/generic/packages/Packages";
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
