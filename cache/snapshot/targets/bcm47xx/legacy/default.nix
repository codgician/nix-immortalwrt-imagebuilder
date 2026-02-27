# snapshot bcm47xx/legacy
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-331RcL1SPTyzDRRf0Q835fnS1A6VBjzQY5h1LRkeS3w=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "5ee8ea26eaa1433d329eec5ce3d93eab64e5e65acd2ac6cd7ef7def7dbc52431";
    filename = "immortalwrt-imagebuilder-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OyH36lsJz1IB8Cl1+TDqgKcnBTz1XYfLveF18cET0Nk=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "49a9090b7910275985092c681b6bc8ce";
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
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.12.67-1-49a9090b7910275985092c681b6bc8ce";
    profiles = {
      dlink_dwl-3150 = {
        device_packages = [ ];
      };
      standard = {
        device_packages = [ ];
      };
      standard-noloader-gz = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.67-1-49a9090b7910275985092c681b6bc8ce" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/legacy/kmods/6.12.67-1-49a9090b7910275985092c681b6bc8ce/";
    sourceInfo = {
      hash = "sha256-9wXqb8r4QLnezAMECgqmGbTCa47vO8QfxWeDXlm7dow=";
      name = "kmods-bcm47xx_legacy-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/legacy/kmods/6.12.67-1-49a9090b7910275985092c681b6bc8ce/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-FhWMtRv8zFfDbdUTrhSJJ2pzCAAPfaSQnn/x0Lh6B+o=";
      name = "bcm47xx_legacy-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm47xx/legacy/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_mips32";
  feeds = import ./../../../packages/mipsel_mips32.nix;
}
