# snapshot lantiq/xrx200_legacy
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/";
  sha256sums = {
    hash = "sha256-7vv5TgyJtbSini8myhHbxQWm28g2iocmdssuGFOFe6o=";
    name = "lantiq_xrx200_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "04fcada4772ed2269c008cd93f337f34f28dd73434d11d0bc377d7d05a0cefeb";
    filename = "immortalwrt-imagebuilder-lantiq-xrx200_legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6dPARml5GBR4AKMp9UxmKBBCa2qi1WSNGzCoLoaRdxY=";
    name = "lantiq_xrx200_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "cfb54815ceb5877d1c74ad9d901f65f1";
      version = "6.12.85";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "dsl-vrx200-firmware-xdsl-a"
      "dsl-vrx200-firmware-xdsl-b-patch"
      "firewall4"
      "fstools"
      "kmod-dsa-gswip"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-ltq-atm-vr9"
      "kmod-ltq-deu-vr9"
      "kmod-ltq-ptm-vr9"
      "kmod-ltq-vdsl-vr9"
      "kmod-ltq-vdsl-vr9-mei"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "ltq-vdsl-vr9-app"
      "ltq-vdsl-vr9-vectoring-fw-installer"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoa"
      "ppp-mod-pppoe"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.85-1-cfb54815ceb5877d1c74ad9d901f65f1";
    profiles = {
      netgear_dm200 = {
        device_packages = [
          "xrx200-rev1.1-phy22f-firmware"
          "xrx200-rev1.2-phy22f-firmware"
        ];
      };
    };
  };
  kmods."6.12.85-1-cfb54815ceb5877d1c74ad9d901f65f1" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/kmods/6.12.85-1-cfb54815ceb5877d1c74ad9d901f65f1/";
    sourceInfo = {
      hash = "sha256-mnZmw+dTh5GRRxZcE4jXxeURwTqLkljGPlbHeryHAKo=";
      name = "kmods-lantiq_xrx200_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/kmods/6.12.85-1-cfb54815ceb5877d1c74ad9d901f65f1/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/packages/";
    sourceInfo = {
      hash = "sha256-0SgalSyMwkB2lzn72NA2dlVTICxQ9KAoM3gbh5IFBZM=";
      name = "lantiq_xrx200_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
