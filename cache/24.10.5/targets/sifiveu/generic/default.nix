# 24.10.5 sifiveu/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-VTTiBsm7d3oORl5Z4W/wQNByhZsvmhotmsS7Vu8Cn+U=";
    name = "sifiveu_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "90239af6437e80628ed45e7292ee920bd9f9b12fbdd3ddeb852a9035ea68dcc0";
    filename = "immortalwrt-imagebuilder-24.10.5-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-hkcNhSMNDYhUdY0KsbqL+64aCOvoUuIU+uyfjEo0YuA=";
    name = "sifiveu_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "9e2f4a64a0a65c8a2c927bb82e924bbb";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-9e2f4a64a0a65c8a2c927bb82e924bbb";
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
  kmods."6.6.122-1-9e2f4a64a0a65c8a2c927bb82e924bbb" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sifiveu/generic/kmods/6.6.122-1-9e2f4a64a0a65c8a2c927bb82e924bbb/";
    sourceInfo = {
      hash = "sha256-TaP5nVo/TjE4sL4TrCUgRHE5lebAu0d56HnAyvmRzes=";
      name = "kmods-sifiveu_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sifiveu/generic/kmods/6.6.122-1-9e2f4a64a0a65c8a2c927bb82e924bbb/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-XYpo2RkOU5E1T2V+9hlabZ0jnEuXCjhLx0p86qNSTbs=";
      name = "sifiveu_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/sifiveu/generic/packages/Packages";
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
