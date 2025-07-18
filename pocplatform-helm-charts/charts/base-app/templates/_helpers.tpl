{{- define "base-app.name" -}}
{{- .Chart.Name -}}
{{- end }}

{{- define "base-app.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}
