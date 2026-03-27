# snapshot lantiq/xrx200_legacy
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/";
  sha256sums = {
    hash = "sha256-zfzxwafCeAqjznI8t1Nvc2UD3z0CH7gVpkiVrU/DIk0=";
    name = "lantiq_xrx200_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "d112000e801253a7f23b283d214bf1fd97791d14f41d2b04a3ff9bd7ffdb5167";
    filename = "immortalwrt-imagebuilder-lantiq-xrx200_legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+IhqObh31X66HKe5yBJdtmRd7D58ssNhrLfMUI2zukE=";
    name = "lantiq_xrx200_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "2f2deb615a62eed7389d1cad8f0945e1";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-2f2deb615a62eed7389d1cad8f0945e1";
    profiles = {
      netgear_dm200 = {
        device_packages = [
          "xrx200-rev1.1-phy22f-firmware"
          "xrx200-rev1.2-phy22f-firmware"
        ];
      };
    };
  };
  kmods."6.12.77-1-2f2deb615a62eed7389d1cad8f0945e1" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/kmods/6.12.77-1-2f2deb615a62eed7389d1cad8f0945e1/";
    sourceInfo = {
      hash = "sha256-R7VqbJCq4sZa/fBcBofD9q8UVPyHKT8ELkTXK2S8ds0=";
      name = "kmods-lantiq_xrx200_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/kmods/6.12.77-1-2f2deb615a62eed7389d1cad8f0945e1/packages.adb";
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
      hash = "sha256-83IC3MnZPb9SpSGgwKedHpO3VxUUONW6+zw6cp6Cfe8=";
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
