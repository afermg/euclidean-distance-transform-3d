{
  lib,
  # build deps
  buildPythonPackage,
  fetchFromGitHub,
  # Py build
  setuptools,
  # setuptools-scm,
  numpy,
  pbr,
  cython,
  # test deps
  pytest,
}:
buildPythonPackage {
  pname = "edt";
  version = "3.0.0";

  # src = ./..; # For local testing, add flag --impure when running
  src = fetchFromGitHub {
    owner = "afermg";
    repo = "euclidean-distance-transform-3d";
    rev = "";
    sha256 = "";
  };

  pyproject = true;
  buildInputs = [
    # setuptools-scm
    setuptools
  ];
  propagatedBuildInputs = [
    numpy
    pbr
    cython
  ];

  pythonImportsCheck = [
    pytest
  ];

  meta = {
    description = "baby";
    homepage = "https://github.com/afermg/baby";
    license = lib.licenses.bsd3;
  };
}
