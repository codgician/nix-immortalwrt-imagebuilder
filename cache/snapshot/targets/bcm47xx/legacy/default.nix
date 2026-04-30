# snapshot bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-5t7jBvYgiFjuOMboeRJqnwRYDrVA6r1y1SOGTE1CUzg=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "ad86f68347d050eb3650b2ef2e9df8ae8f19c60bb0a8248b5d8be5965dbd84a3";
    filename = "immortalwrt-imagebuilder-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UBuGEo51cUlmn93PF44VzXajAa1baHnVTRLFCSCAAFk=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "4a14ecdc8e2139e0656c65115f565b52";
      version = "6.12.80";
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
    kmods_target = "6.12.80-1-4a14ecdc8e2139e0656c65115f565b52";
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
  kmods."6.12.80-1-4a14ecdc8e2139e0656c65115f565b52" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/kmods/6.12.80-1-4a14ecdc8e2139e0656c65115f565b52/";
    sourceInfo = {
      hash = "sha256-ETVLPRpcWx+fKyyTFXDn16N3HR6bMG8qKqIyzTqCikA=";
      name = "kmods-bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/kmods/6.12.80-1-4a14ecdc8e2139e0656c65115f565b52/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-srxBcOmOk0S+aWoOlWGPTmg9s1y3gkCHj8pGIlHPB94=";
      name = "bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/legacy/packages/packages.adb";
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
