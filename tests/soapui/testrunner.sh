#!/bin/bash

# Ruta al testrunner.sh de SoapUI (ajusta según tu instalación)
SOAPUI_TESTRUNNER="/opt/SoapUI/bin/testrunner.sh"

# Ruta al proyecto SoapUI
PROJECT_FILE="tests/soapui/jsonplaceholder-project.xml"

# Ejecutar pruebas y generar reportes JUnit y HTML
"$SOAPUI_TESTRUNNER" -r -j -f reports "$PROJECT_FILE"

# Verificar resultado
if [ $? -eq 0 ]; then
  echo "✅ Pruebas exitosas!"
else
  echo "❌ Fallaron las pruebas. Revisa los reportes en /reports."
  exit 1
fi