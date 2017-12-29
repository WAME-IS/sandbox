
// TODO: 
//		split tasks across multiple files

var gulp = require('gulp');
var preen = require('preen');
//var rewriteCSS = require('gulp-rewrite-css');

var path_source = './private/components/';
var path_dest = './web/';

// PREEN
gulp.task('preen', function(cb) {
  preen.preen({}, cb);
});

// BOWER NORMALIZE
var bower = require('main-bower-files');
var bowerNormalizer = require('gulp-bower-normalize');

gulp.task('bower-normalize',['preen'], function() {
    return gulp.src(bower(), {base: './bower_components'})
        .pipe(bowerNormalizer({
			bowerJson: './bower.json',
			checkPath: true
		}))
        .pipe(gulp.dest(path_source));
});

// COPY BOOTSTRAP FONTS
// fix to hard copy fonts from Bootstrap as they don't include their fonts in their bower.json file
gulp.task('copy-bs-fonts', function() {
  return gulp.src(path_source+'/bootstrap/fonts/*.{eot,svg,ttf,woff,woff2}')
    .pipe(gulp.dest(path_dest+'/fonts/'));
});

// COPY JQUERY FILER FONTS
gulp.task('copy-jfiler-fonts', function() {
  return gulp.src(path_source +'/jquery.filer/assets/fonts/jquery.filer-icons/*.*')
    .pipe(gulp.dest(path_dest+'/fonts/jquery.filer-icons/'));
});

// COPY JQUERY LIGHTSLIDER IMGS
gulp.task('copy-lslider-img', function() {
  return gulp.src(path_source +'/lightslider/img/*.*')
    .pipe(gulp.dest(path_dest+'/images/lightslider/'));
});

// COPY IONRANGESLIDER IMG
gulp.task('copy-ionSlider-img', function() {
  return gulp.src(path_source +'/ion.rangeSlider/img/*.*')
    .pipe(gulp.dest(path_dest+'/img/'));
});

//TINYMCE
gulp.task('copy-tinymce', ['preen', 'bower-normalize'], function() {
  return gulp.src('./bower_components/tinymce/**/**/*')
    .pipe(gulp.dest(path_dest + '/components/tinymce/'));
});

// WATCH LESS
gulp.task('watchLess', function () {
	// Callback mode, useful if any plugin in the pipeline depends on the `end`/`flush` event 
    return gulp.watch('private/stylesheets/*.less', ['compileLess']);
});

// COMPILE LESS
var less = require('gulp-less');
gulp.task('compileLess', function () {
  return gulp.src('private/stylesheets/layout.less')
    .pipe(less())
    .pipe(gulp.dest('web/css'));
});

// WATCH SASS
gulp.task('watchSass', function () {
    gulp.watch('private/stylesheets/admin/*.scss', ['compileSass']);
});

// COMPILE SASS
var sass = require('gulp-sass');
gulp.task('compileSass', ['preen', 'bower-normalize'], function () {
  return gulp.src('private/stylesheets/admin/admin.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest('web/css'));
});

gulp.task('default', [
    'copy-bs-fonts', 
    'copy-jfiler-fonts', 
    'copy-lslider-img', 
    'copy-ionSlider-img',
    'preen', 
    'bower-normalize',
    'copy-tinymce',
    'compileLess',
    'compileSass'
]);
