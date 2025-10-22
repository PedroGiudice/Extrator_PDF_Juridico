param([switch]$Serve)
$ErrorActionPreference = 'Stop'
$base = Split-Path -Parent $MyInvocation.MyCommand.Path
$vendor = Join-Path $base 'vendor'
$null = New-Item -ItemType Directory -Force -Path (Join-Path $vendor 'pdfjs'), (Join-Path $vendor 'docx'), (Join-Path $vendor 'filesaver')

$downloads = @(
  @{ Url = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.6.347/pdf.min.js'; Out = 'vendor/pdfjs/pdf.min.js' },
  @{ Url = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.6.347/pdf.worker.min.js'; Out = 'vendor/pdfjs/pdf.worker.min.js' },
  @{ Url = 'https://unpkg.com/docx@9.5.1/dist/index.mjs'; Out = 'vendor/docx/index.mjs' },
  @{ Url = 'https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.5/FileSaver.min.js'; Out = 'vendor/filesaver/FileSaver.min.js' }
)

foreach($d in $downloads){
  $outPath = Join-Path $base $d.Out
  $dir = Split-Path -Parent $outPath
  if(!(Test-Path $dir)){ New-Item -ItemType Directory -Force -Path $dir | Out-Null }
  Write-Host "Baixando: $($d.Url)" -ForegroundColor Cyan
  Invoke-WebRequest -Uri $d.Url -OutFile $outPath
}

Write-Host "Pronto. Dependências salvas na pasta 'vendor'." -ForegroundColor Green
Write-Host "Abra: extrator_pdf_processual_v2.3_offline.html"

if($Serve){ & "$base\start_local_server.ps1" }
