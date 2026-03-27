# 23.05.4 sifiveu/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-Lr+fhrWo1QhGs3zemMuMzAQnujLHQppkxCE8uygKysg=";
    name = "sifiveu_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "942a6b6c61932fab4cb2015ff813be091deb8e20ec53509f78bc5b37b9333c23";
    filename = "immortalwrt-imagebuilder-23.05.4-sifiveu-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-mAc/MDE1O/9KAb33AuJr3gj7zQUgiE3/AAPlEYUTmog=";
    name = "sifiveu_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/sifiveu/generic/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-eQ8s6jBPhyU0ys/F3XtnMA2mYTF8uL4UAGhDoPCIapw=";
      name = "sifiveu_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/sifiveu/generic/packages/Packages";
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
