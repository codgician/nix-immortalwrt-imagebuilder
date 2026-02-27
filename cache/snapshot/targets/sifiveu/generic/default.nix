# snapshot sifiveu/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sifiveu/generic/";
  sha256sums = {
    hash = "sha256-olWgWi6I1rzz0wCTQjPjZWcLjvKTR0cwpVZS4G8NgJ8=";
    name = "sifiveu_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sifiveu/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "6067d7341ec970a5c963e3f08dd2911c7ab2dc817da0ca132099484edd186699";
    filename = "immortalwrt-imagebuilder-sifiveu-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-tOcgNo1tDmk891kNE3mgKrq3tyaCsPWXeolrJmHe3Ec=";
    name = "sifiveu_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sifiveu/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "c1e08daaad7cb0ccbef83637da497eb5";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    ];
    kmods_target = "6.12.67-1-c1e08daaad7cb0ccbef83637da497eb5";
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
  kmods."6.12.67-1-c1e08daaad7cb0ccbef83637da497eb5" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sifiveu/generic/kmods/6.12.67-1-c1e08daaad7cb0ccbef83637da497eb5/";
    sourceInfo = {
      hash = "sha256-5qrEmT0P+ODk38Jl7LsViCFZqoThbUU/feB4yLvpGNI=";
      name = "kmods-sifiveu_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sifiveu/generic/kmods/6.12.67-1-c1e08daaad7cb0ccbef83637da497eb5/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sifiveu/generic/packages/";
    sourceInfo = {
      hash = "sha256-vYoisLjoRXfj41OzJcmHU02yHNdJqfAKMLlIvOQtDDg=";
      name = "sifiveu_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sifiveu/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_generic";
  feeds = import ./../../../packages/riscv64_generic.nix;
}
