% 54 models

% Features
feature((smartwatch;screen;touch;standard;payment;gps;sports_tracking;running;skiing;hiking;energy_management;basic;advanced_solar)).

% Feature tree
root(smartwatch).

mandatory(smartwatch,screen).
optional(smartwatch,payment).
optional(smartwatch,gps).
optional(smartwatch,sports_tracking).
mandatory(smartwatch,energy_management).

alternative(screen,touch).
alternative(screen,standard).

or(sports_tracking,running).
or(sports_tracking,skiing).
or(sports_tracking,hiking).

alternative(energy_management,basic).
alternative(energy_management,advanced_solar).

% Cross-tree constraints
requires(sports_tracking,gps).
excludes(standard,payment).
