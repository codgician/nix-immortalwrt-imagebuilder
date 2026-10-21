# snapshot lantiq/xrx200_legacy
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/";
  sha256sums = {
    hash = "sha256-ea8+j7A3dOjSUNYw2OL9XkiXqYjMvjzlvt4FoJCQn88=";
    name = "lantiq_xrx200_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "e3d083d5ca39f843668e6106c8f116bf82136808ea17be2bd05e8989b0b989a5";
    filename = "immortalwrt-imagebuilder-lantiq-xrx200_legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Y6Xyi8VBaxtcVbLIU3FcS0B3HtUsW81myt/EWT4CkYc=";
    name = "lantiq_xrx200_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "813411637239288bcd634f99f017260e";
      version = "6.18.55";
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
    kmods_target = "6.18.55-1-813411637239288bcd634f99f017260e";
    profiles = {
      netgear_dm200 = {
        device_packages = [
          "xrx200-rev1.1-phy22f-firmware"
          "xrx200-rev1.2-phy22f-firmware"
        ];
      };
    };
  };
  kmods."6.18.55-1-813411637239288bcd634f99f017260e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/kmods/6.18.55-1-813411637239288bcd634f99f017260e/";
    sourceInfo = {
      hash = "sha256-QR6d8pfvCBF0PXj+xag3ffa6Lc8YcT50xc+Xnsy2gNg=";
      name = "kmods-lantiq_xrx200_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/lantiq/xrx200_legacy/kmods/6.18.55-1-813411637239288bcd634f99f017260e/packages.adb";
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
      hash = "sha256-Q2PLkxbqTdC+/urMuqPF2mYA0f8TGRtuasUtnqgHZa8=";
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
