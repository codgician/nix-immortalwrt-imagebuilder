# 24.10.4 d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-dNs03rFazJ+DRGMS0/RltimDFmoEzXbkIUKFt9GCKck=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "1af1cefa428544edae807a45469131aaaf5639b77c9cd0498fe5f0bf79b19d21";
    filename = "immortalwrt-imagebuilder-24.10.4-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+IoDfUNkKGiNbMwP8sFV6DEOSuZDXaIGZme4DeiDRI0=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "e0f968d37fbcdecde60944750c21d0a8";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-e0f968d37fbcdecde60944750c21d0a8";
    profiles = {
      "100ask_dongshan-nezha-stu" = {
        device_packages = [ ];
      };
      allwinner_d1-nezha = {
        device_packages = [ ];
      };
      sipeed_lichee-rv-dock = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      widora_mangopi-mq-pro = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.110-1-e0f968d37fbcdecde60944750c21d0a8" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/d1/generic/kmods/6.6.110-1-e0f968d37fbcdecde60944750c21d0a8/";
    sourceInfo = {
      hash = "sha256-kIy/k1qZxD2bkvA1CudfjIRyY3E+zaRnYZ4T2wwJgiI=";
      name = "kmods-d1_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/d1/generic/kmods/6.6.110-1-e0f968d37fbcdecde60944750c21d0a8/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/d1/generic/packages/";
    sourceInfo = {
      hash = "sha256-RZUU8pvjMOqCFZhlCO30YgblvJ+5tad8sfvOjLb7MUM=";
      name = "d1_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/d1/generic/packages/Packages";
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
