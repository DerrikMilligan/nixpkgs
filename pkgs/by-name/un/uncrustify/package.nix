{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
  python3,
}:

stdenv.mkDerivation rec {
  pname = "uncrustify";
  version = "0.81.0";

  src = fetchFromGitHub {
    owner = "uncrustify";
    repo = "uncrustify";
    rev = "uncrustify-${version}";
    sha256 = "sha256-8KTsrXUYOfqsWSGBAl0mZpGOYr+duFrRB0ITmq2Auqg=";
  };

  nativeBuildInputs = [
    cmake
    python3
  ];

  meta = with lib; {
    description = "Source code beautifier for C, C++, C#, ObjectiveC, D, Java, Pawn and VALA";
    mainProgram = "uncrustify";
    homepage = "https://uncrustify.sourceforge.net/";
    license = licenses.gpl2Plus;
    platforms = platforms.unix;
    maintainers = [ maintainers.bjornfor ];
  };
}
