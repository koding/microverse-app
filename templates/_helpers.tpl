{{/* Create a default fully qualified app name. */}}
{{- define "microverse.name" -}}
{{- printf "microverse-app-%s" .Values.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
