# 24.10.5 lantiq/xrx200_legacy
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200_legacy/";
  sha256sums = {
    hash = "sha256-eY0u8cM1vfQEhvVGDi3047jXk1TR/gqhd3hv/nSD7TI=";
    name = "lantiq_xrx200_legacy-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200_legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "7c4b87522f1abf217f3773fbd835d32336db7a2d35fc80a2b0db192d7dac3946";
    filename = "immortalwrt-imagebuilder-24.10.5-lantiq-xrx200_legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-aK5V3/lw6oQJaIEfeskSW750EcCRjURirj5xitoXrGQ=";
    name = "lantiq_xrx200_legacy-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200_legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "483d081b517d136178bf2da6e4ddb283";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "dsl-vrx200-firmware-xdsl-a"
      "dsl-vrx200-firmware-xdsl-b-patch"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-ltq-atm-vr9"
      "kmod-ltq-deu-vr9"
      "kmod-ltq-ptm-vr9"
      "kmod-ltq-vdsl-vr9"
      "kmod-ltq-vdsl-vr9-mei"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "ltq-vdsl-vr9-app"
      "ltq-vdsl-vr9-vectoring-fw-installer"
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
      "ppp-mod-pppoa"
      "ppp-mod-pppoe"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-483d081b517d136178bf2da6e4ddb283";
    profiles = {
      netgear_dm200 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.122-1-483d081b517d136178bf2da6e4ddb283" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200_legacy/kmods/6.6.122-1-483d081b517d136178bf2da6e4ddb283/";
    sourceInfo = {
      hash = "sha256-DIhgOKulEcedBztXPUsB7ua5CkKsCviS+sgUqWLullM=";
      name = "kmods-lantiq_xrx200_legacy-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200_legacy/kmods/6.6.122-1-483d081b517d136178bf2da6e4ddb283/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200_legacy/packages/";
    sourceInfo = {
      hash = "sha256-XL59Xur1Jfisz1CHIyqHQe07/HkS9/jGoSWIblmibNg=";
      name = "lantiq_xrx200_legacy-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200_legacy/packages/Packages";
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
