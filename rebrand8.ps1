$root = "C:\Users\katti\OneDrive\Desktop\Design Resources\Finished websites\TrentDaka WebProfile"
$files = Get-ChildItem -Path $root -Filter *.html
$pairs = [ordered]@{
  'platform health roadmap'                                                                                                   = 'reliability roadmap'
  'platform Health Consultation'                                                                                              = 'Platform Consultation'
  'Request Your platform'                                                                                                     = 'Request Your Platform'
  'Proactive platform Health'                                                                                                 = 'Proactive Platform Operations'
  'A Proactive platform Health Plan'                                                                                          = 'A Proactive Platform Operations Plan'
  'digital health tracking'                                                                                                   = 'continuous monitoring'
  'Complete health questionnaire, incident history review, and physical assessment\.'                                         = 'Complete environment questionnaire, incident history review, and infrastructure assessment.'
  'platform.healthy'                                                                                                          = 'reliability-focused'
  'staying platform.healthy'                                                                                                  = 'keeping your platform reliable'
  'lifetime of platform health'                                                                                               = 'lifetime of platform reliability'
  'platform‑healthy living'                                                                                                   = 'sustainable operational practices'
  'infralogist'                                                                                                               = 'systems engineer'
  'board.certified infralogist|board-certified infralogist'                                                                   = 'senior systems engineer'
  'infravascular risk assessment'                                                                                             = 'infrastructure risk assessment'
  'or earlier if you have a incident history of early infrastructure failure, diabetes, high cluster health, or high latency' = 'or earlier if you have an incident history of early failures, rapid growth, elevated latency, or spiraling costs'
  'architecturals load the gun, but operational pulls the trigger'                                                            = 'architecture loads the gun, but operations pull the trigger'
  'load sugar'                                                                                                                = 'error rates'
  'configurations to specifically address architectural configuration disorders'                                              = 'tooling to specifically address structural configuration disorders'
  'managing high cluster health'                                                                                              = 'managing chronic cluster sprawl'
  'Worried about your cluster health\?'                                                                                       = 'Worried about your cluster sprawl?'
  'sustainable cluster health control'                                                                                        = 'sustainable cluster operations'
  'cluster health check'                                                                                                      = 'cluster audit'
  'high cluster health, incident history, preventive checkup'                                                                 = 'rising latency, incident history, preventive review'
  'a Access details'                                                                                                          = 'Access details'
  'any recent lab results'                                                                                                    = 'any recent audit results'
  'record of your cluster health readings'                                                                                    = 'record of your incident metrics'
  'healthtech Company'                                                                                                        = 'HealthTech Company'
  'workout plans using treadmills, stationary bikes, and light resistance, with continuous metrics review'                    = 'remediation plans using pairing sessions, guided drills, and light automation, with continuous mentoring'
  'Treadmill, stationary bikes'                                                                                               = 'Pairing, guided drills'
  'Physical, emotional, and educational'                                                                                      = 'Technical, cultural, and educational'
  'platform rhythm and cluster health are monitored continuously by a engineer'                                               = 'platform metrics and cluster health are monitored continuously by an engineer'
  'remediation physiologist'                                                                                                  = 'automation coach'
  'manual changes cessation'                                                                                                  = 'manual-change elimination'
  'The remediations are approved'                                                                                             = 'The remediations are scoped'
  'prescribe pills'                                                                                                           = 'push quick fixes'
  'evidence.based configuration, capacity planning, remediation, load reduction'                                              = 'evidence-based configuration, capacity planning, remediation, and load reduction'
  'multi.faceted plan that combines evidence.based'                                                                           = 'multi-faceted plan that combines evidence-based'
  'platform.healthy capacity planning'                                                                                        = 'platform-reliability capacity planning'
  'medical exercise'                                                                                                          = 'operational drill'
}

foreach ($f in $files) {
  $c = Get-Content -Raw -Encoding UTF8 $f.FullName
  $orig = $c
  foreach ($k in $pairs.Keys) {
    $c = [regex]::Replace($c, $k, $pairs[$k])
  }
  if ($c -ne $orig) {
    Set-Content -Path $f.FullName -Value $c -Encoding UTF8 -NoNewline
    Write-Output "Updated: $($f.Name)"
  }
}
