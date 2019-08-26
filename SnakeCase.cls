//replace all '-' with '_'
function kebabToSnake(str) {
    var newStr = str.replace(/-/g , "_" );
    //str.split(' ').join('_').toLowerCase();
    return newStr;
}
