'use strict';

var gulp = require('gulp');
var shell = require('gulp-shell');

// function for adding each date
var addData = function(date, title){
  paths[date + 'JS'] = 'homework_folder/' + date + '/' + title + '.js';
  paths[date + 'RB'] = 'homework_folder/' + date + '/' + title + '.rb';

  gulp.task(date + 'JS', shell.task([
    'clear', 
    'mocha ' + paths[date + 'JS']
  ]));

  gulp.task(date + 'RB', shell.task([
    'clear', 
    'ruby -I"lib:test" ' + paths[date + 'RB']
  ]));
}

var paths = {}

addData('week1day2', 'recursion_1'); // adds week1day2
addData('week1day3', 'sorting_1'); // adds week1day3
addData('week2day1', 'dataStructures_1'); // adds week2day1
addData('week2day2', 'dataStructures_2'); // adds week2day2
addData('week2day3', 'sorting_2'); // adds week2day3
addData('week3day1', 'dataStructures_3'); // adds week3day1
addData('week3day2', 'dataStructures_4'); // adds week3day2
addData('week3day3', 'recursion_2'); // adds week3day3
addData('week4day1', 'dynamicProg_1'); // adds week4day1
addData('week4day2', 'sorting_3'); // adds week4day2


// watcher
gulp.task('watch', function(){
  gulp.watch(paths.week1day2JS, ['week1day2JS']);
  gulp.watch(paths.week1day2RB, ['week1day2RB']);
  gulp.watch(paths.week1day3JS, ['week1day3JS']);
  gulp.watch(paths.week1day3RB, ['week1day3RB']);

  gulp.watch(paths.week2day1JS, ['week2day1JS']);
  gulp.watch(paths.week2day1RB, ['week2day1RB']);
  gulp.watch(paths.week2day2JS, ['week2day2JS']);
  gulp.watch(paths.week2day2RB, ['week2day2RB']);
  gulp.watch(paths.week2day3JS, ['week2day3JS']);
  gulp.watch(paths.week2day3RB, ['week2day3RB']);
  
  gulp.watch(paths.week3day1JS, ['week3day1JS']);
  gulp.watch(paths.week3day1RB, ['week3day1RB']);
  gulp.watch(paths.week3day2JS, ['week3day2JS']);
  gulp.watch(paths.week3day2RB, ['week3day2RB']);
  gulp.watch(paths.week3day3JS, ['week3day3JS']);
  gulp.watch(paths.week3day3RB, ['week3day3RB']);

  gulp.watch(paths.week4day1JS, ['week4day1JS']);
  gulp.watch(paths.week4day1RB, ['week4day1RB']);
  gulp.watch(paths.week4day2JS, ['week4day2JS']);
  gulp.watch(paths.week4day2RB, ['week4day2RB']);
})

gulp.task('default', ['watch']);