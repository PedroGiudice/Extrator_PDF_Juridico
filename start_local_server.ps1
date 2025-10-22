param([int]$Port=5500)
Add-Type -AssemblyName System.Net.HttpListener
$prefix = "http://localhost:$Port/"
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add($prefix)
$listener.Start()
Write-Host "Servindo $(Get-Location) em $prefix (Ctrl+C para parar)" -ForegroundColor Green

$mime = @{ '.html'='text/html; charset=utf-8'; '.htm'='text/html; charset=utf-8'; '.js'='text/javascript; charset=utf-8'; '.mjs'='text/javascript; charset=utf-8'; '.css'='text/css; charset=utf-8'; '.json'='application/json; charset=utf-8'}

try {
  while($listener.IsListening){
    $context = $listener.GetContext()
    $path = $context.Request.Url.LocalPath.TrimStart('/')
    if([string]::IsNullOrWhiteSpace($path)){ $path = 'extrator_pdf_processual_v2.3_offline.html' }
    $full = Join-Path (Get-Location) $path
    if(!(Test-Path $full)){
      $context.Response.StatusCode = 404
      $bytes = [Text.Encoding]::UTF8.GetBytes("404 Not Found")
      $context.Response.OutputStream.Write($bytes,0,$bytes.Length)
      $context.Response.Close(); continue
    }
    $ext = [IO.Path]::GetExtension($full)
    $context.Response.ContentType = $mime[$ext]
    $bytes = [IO.File]::ReadAllBytes($full)
    $context.Response.ContentLength64 = $bytes.Length
    $context.Response.OutputStream.Write($bytes,0,$bytes.Length)
    $context.Response.Close()
  }
}
finally { $listener.Stop(); $listener.Close() }
