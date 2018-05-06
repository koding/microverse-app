{{/* Create a default fully qualified app name. */}}
{{- define "microverse.name" -}}
{{- printf "microverse-app-%s" (.Values.name | default .Release.Name) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Create a default fully qualified chart name. */}}
{{- define "microverse.chartname" -}}
{{- printf "microverse-app-%s-0.0.1" (.Values.name | default .Release.Name) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Create a default app image name. */}}
{{- define "microverse.image" -}}
{{- printf "%s/%s:%s" (.Values.repository | default "gcr.io/kodingdev-vms") (include "microverse.name" .) (.Values.tag | default "0.0.1") -}}
{{- end -}}

{{/* Create a tls secret suffix. */}}
{{- define "microverse.tlssuffix" -}}
{{- printf "%s-tls" (.Values.domain | default "kloud.sh") | trunc 63 | replace "." "-" | trimSuffix "-" -}}
{{- end -}}
