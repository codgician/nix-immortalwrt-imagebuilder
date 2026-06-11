# snapshot malta/le64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/";
  sha256sums = {
    hash = "sha256-pCg9JNTMPh7Hi7NwegxIWMmB2XTLn2+b5KVSymNQCGc=";
    name = "malta_le64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/sha256sums";
  };
  imagebuilder = {
    sha256 = "26ffd50b068cb654ecc9dc94ef16f0d4345a2a1d31909431a33e4c2a2ebb8390";
    filename = "immortalwrt-imagebuilder-malta-le64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6Zh8tvBGCpOl91f99YQb5lpfgPIhOIGRF8FdkYc99ps=";
    name = "malta_le64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64el_mips64r2";
    linux_kernel = {
      release = "1";
      vermagic = "6c697da27b5633eb8985b1672bd618fe";
      version = "6.18.34";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-mac80211-hwsim"
      "kmod-nft-offload"
      "kmod-pcnet32"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
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
      "wpad-openssl"
    ];
    kmods_target = "6.18.34-1-6c697da27b5633eb8985b1672bd618fe";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.34-1-6c697da27b5633eb8985b1672bd618fe" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/kmods/6.18.34-1-6c697da27b5633eb8985b1672bd618fe/";
    sourceInfo = {
      hash = "sha256-RQl9hf+R6+NdlPXRM1mhByS1erc5fGxa2HZkgRNAV5M=";
      name = "kmods-malta_le64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/kmods/6.18.34-1-6c697da27b5633eb8985b1672bd618fe/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/packages/";
    sourceInfo = {
      hash = "sha256-Na+bqYnegP/ybuda0VJLNFwVt27SESbuFQD98G8yObc=";
      name = "malta_le64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/le64/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips64el_mips64r2";
  feeds = import ./../../../packages/mips64el_mips64r2.nix;
}
