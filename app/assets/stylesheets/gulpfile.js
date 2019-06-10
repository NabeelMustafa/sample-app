var gulp = require('gulp'),
    sass = require('gulp-ruby-sass'),
    uglify = require('gulp-uglify'),
    rename = require('gulp-rename'),
    gutil = require('gulp-util'),
    concat = require('gulp-concat'),
    uglifycss = require('gulp-uglifycss');
    replace = require('gulp-replace'),
    fs = require('fs');

//Processa main.css
gulp.task('sass:main', function () {
    sass('scss/main.scss').on('error', sass.logError)
    .pipe(uglifycss({
      "uglyComments": true
    }))
    .pipe(rename("main.min.css"))
    .pipe(gulp.dest('./'));

});
//concatena arquivos js
// gulp.task('concat:vendors', function() {
//   return gulp.src([
//          'js/vendor/*.js'
//    ])
//     .pipe(concat('vendors.js'))
//     .pipe(uglify({ mangle: false }).on('error', gutil.log))
//     .pipe(gulp.dest('dist/js'));
// });
// gulp.task('concat:app', function() {
//   return gulp.src([
//          'js/main.js'
//    ])
//     .pipe(concat('app.js'))
//     .pipe(uglify({ mangle: false }).on('error', gutil.log))
//     .pipe(gulp.dest('dist/js'));
// });

//copiar itens
// gulp.task('copy:image', function() {
//    gulp.src('./img/**/*.*' )
//    .pipe(gulp.dest('./dist/img'));
// });

gulp.task('default', function () {
    gulp.watch([
        'scss/*/*.scss',
        'scss/*.scss'
    ], [
        'sass:main'
    ]);
    // gulp.watch([
    //     'assets/js/vendor/*.js'
    // ], [
    //     'concat:vendors'
    // ]);
    // gulp.watch([
    //     'assets/js/main.js'
    // ], [
    //     'concat:app'
    // ]);
});

