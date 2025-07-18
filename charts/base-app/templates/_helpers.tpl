{{/*
Return the name of the application.
*/}}
{{- define "base-app.name" -}}
{{ .Chart.Name }}
{{- end }}

{{/*
Return the full name combining release name and chart name.
*/}}
{{- define "base-app.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{/*
Return common labels.
*/}}
{{- define "base-app.labels" -}}
app.kubernetes.io/name: {{ include "base-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/component: {{ .Chart.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels (used for matchLabels).
*/}}
{{- define "base-app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "base-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
