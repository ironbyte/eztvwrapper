module EZTVWrapper
  REGEX_SCENE_TV = %r{
    (?<show_name>[\w.]+)                                           #show_name
    (?:\.S(?<season_no>\d{2})E(?<episode_no>\d{2}))                #season_no, episode_no
    (?:\.(?<tag>INTERNAL|PROPER|REPACK))?                          #tag (OPTIONAL)
    (?:\.(?<episode_title>[A-Z\-\.]+))?                            #episode_title (OPTIONAL)
    (?:\.(?<resolution>720P|1080P))?                               #resolution (OPTIONAL)
    (?:\.(?<source>[A-Z.\-0-9]+))                                  #source
    (?:\.(?<encoding>(?:X|H)264|XviD))                             #encoding
    (?:-(?<release_group>\w+))                                     #release_group
  }xi
end
