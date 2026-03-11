# snapshot mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-i1kIQ7XHM5zxF3ELvkBEC42gurgYw0ENJZ7A3n5thNk=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "5e11540309a1b88ee0067323a3c15bb9342b8bd1a1c19317da19c49fd9077f08";
    filename = "immortalwrt-imagebuilder-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-0iyx9TXa8zYsGm2I9xsCQ8A9gVHbhTFPKFV5WReXO1M=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "9249e879665185150785036f6cabf856";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-9249e879665185150785036f6cabf856";
    profiles = {
      iptime_a6004mx = {
        device_packages = [
          "kmod-usb3"
          "uboot-envtools"
        ];
      };
      linksys_ea7500-v3 = {
        device_packages = [
          "kmod-usb3"
          "uboot-envtools"
        ];
      };
      mediatek_mt7629-rfb = {
        device_packages = [ "swconfig" ];
      };
      netgear_ex6250-v2 = {
        device_packages = [ "uboot-envtools" ];
      };
      tplink_eap225-v5 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.74-1-9249e879665185150785036f6cabf856" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/kmods/6.12.74-1-9249e879665185150785036f6cabf856/";
    sourceInfo = {
      hash = "sha256-G2/UwZcyheOP/2EPf3MPaqenU38lpr9mSzLhzm5JjMY=";
      name = "kmods-mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/kmods/6.12.74-1-9249e879665185150785036f6cabf856/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-nto0sg/ctd/BIz7Eb/cCeBu5SUEP549hOLje40A3UDI=";
      name = "mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7";
  feeds = import ./../../../packages/arm_cortex-a7.nix;
}
