# 24.10.4 qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-YTvqr1LE0J+cCsrfAzDFWgMR4QcrfACAC3mvpPmLpDg=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "6824f8afab44745eaa0f8a6d55f382b7c857aec4bc4b97d48447dda2cb0aa085";
    filename = "immortalwrt-imagebuilder-24.10.4-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-WP+rHw+nmVPYqurX1kpwd9lFTK+UKxRMATScmdOL/es=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "0a317091a3da3ef186cd47234500e8db";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
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
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-0a317091a3da3ef186cd47234500e8db";
    profiles = {
      watchguard_firebox-m300 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-w83793"
          "kmod-leds-gpio"
          "kmod-ptp-qoriq"
          "kmod-rtc-rs5c372a"
          "kmod-tpm-i2c-atmel"
        ];
      };
    };
  };
  kmods."6.6.110-1-0a317091a3da3ef186cd47234500e8db" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/qoriq/generic/kmods/6.6.110-1-0a317091a3da3ef186cd47234500e8db/";
    sourceInfo = {
      hash = "sha256-YDJDtGPSE+GdtxsbQGJsO64jCjnvorCq47NlEQhA4Po=";
      name = "kmods-qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/qoriq/generic/kmods/6.6.110-1-0a317091a3da3ef186cd47234500e8db/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-1ayUl1ZKHztVp+kxFNRPZt9hI/5HjoQKAH3jfVZjNo4=";
      name = "qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/qoriq/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc64_e5500";
  feeds = import ./../../../packages/powerpc64_e5500.nix;
}
