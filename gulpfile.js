'use strict';

var gulp = require('gulp');
var shell = require('gulp-shell');


var paths = {
  week1day2JS: 'homework_folder/week1day2/recursion_1.js', 
  week1day2RB: 'homework_folder/week1day2/recursion_1.rb', 
  week1day3JS: 'homework_folder/week1day3/sorting_1.js', 
  week1day3RB: 'homework_folder/week1day3/sorting_1.rb'
}

// week1day2
gulp.task('week1day2JS', shell.task([
  'clear', 
  'mocha ' + paths['week1day2JS']
]));

gulp.task('week1day2RB', shell.task([
  'clear', 
  'ruby -I"lib:test" ' + paths['week1day2RB']
]));

// week1day3
gulp.task('week1day3JS', shell.task([
  'clear', 
  'mocha ' + paths['week1day3JS']
]));

gulp.task('week1day3RB', shell.task([
  'clear', 
  'ruby -I"lib:test" ' + paths['week1day3RB']
]));


// watcher
gulp.task('watch', function(){
  gulp.watch(paths.week1day2JS, ['week1day2JS']);
  gulp.watch(paths.week1day2RB, ['week1day2RB']);
  gulp.watch(paths.week1day3JS, ['week1day3JS']);
  gulp.watch(paths.week1day3RB, ['week1day3RB']);
})

gulp.task('default', ['watch']);