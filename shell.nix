{ pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
  name="dart-flutter-dev-env";

  buildInputs = with pkgs; [
    flutter
    dart

    gnumake
    cmake
    pkg-config
    sysprof

    # for web
    chromium

    # for desktop
    gtk3

    # for mobile
    #libstdcxx5
    #androidsdk
    openjdk17
  ];

  shellHook = ''
    export CHROME_EXECUTABLE="$(which chromium)"
    # echo "CHROME_EXECUTABLE set to $CHROME_EXECUTABLE"
    # flutter doctor -v
    echo "Start developing..."
  '';
}
