'use strict';

var gulp = require('gulp');
var shell = require('gulp-shell');


var paths = {
  week1day2JS: 'work/week1day2/recursion_1.js', 
  week1day2RB: 'work/week1day2/recursion_1.rb'
}

gulp.task('week1day2JS', shell.task([
  'clear', 
  'mocha ' + paths['week1day2JS']
]));

gulp.task('week1day2RB', shell.task([
  'clear', 
  'ruby -I"lib:test" ' + paths['week1day2RB']
]));

gulp.task('watch', function(){
  gulp.watch(paths.week1day2JS, ['week1day2JS']);
  gulp.watch(paths.week1day2RB, ['week1day2RB']);
})

gulp.task('default', ['watch']);