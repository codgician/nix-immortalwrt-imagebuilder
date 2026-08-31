# snapshot package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-iIT1gS8vDYfwhkI3p4FIK5Bgp0hX2nKnhJu8lGm9bic=";
    name = "riscv64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-U0gOeuHl5isqUwHo3UiEGlTF9vWXWr5CmlsuBCz/D5Y=";
      name = "riscv64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/luci/";
    sourceInfo = {
      hash = "sha256-06SN/aVDWhspWrCafhuXI2E5SbuCfUB3B6kHgz7MqgQ=";
      name = "riscv64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/packages/";
    sourceInfo = {
      hash = "sha256-bnEbYmTYDs+pJppB2pkqxXWQUzc9OStYZxMreW2KjaQ=";
      name = "riscv64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/routing/";
    sourceInfo = {
      hash = "sha256-sCd5TQnqOzKInzqiLRlWO+hS2FJ9asHpDdTEe5qShts=";
      name = "riscv64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-RFUlN3LYAJ9oaAv9mkRscfW6RFJcpg2f+/noIyzXbJw=";
      name = "riscv64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/riscv64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
