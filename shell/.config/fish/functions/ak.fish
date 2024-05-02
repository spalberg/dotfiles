function ak -a cmd -d 'Switch AWS profile and kubernetes context in one swoop'
  aws profile "$cmd" && kubectl ctx "$cmd"
end
