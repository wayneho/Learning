function createGrid(size){
    if(size >= 0 && size < 50){
        $('body').append('<br></br><div id="grid"> </div>');
        for(var i = 1; i <= size; i++){
            $('#grid').append('<div class="row"> </div>');
            for(var j = 1; j<=size;j++){
                $('.row:nth-child('+i+')').append('<div class="blocks"> </div>');
            }
        }
    }
    else{
        alert("NOOOO!");
    }
}


function option(op) {
    $('#grid').remove();
    var squares = prompt("New grid size");
    createGrid(squares);
    
    $('.blocks').mouseenter(function(){
	switch(op){
		case 1:
        	$(this).css('background-color', 'white');
			break;
		case 2:
			$(this).css('background-color', getRandomColor());
			break;
		case 3: 
			var currOpacity = $(this).css('opacity');
        	if(currOpacity > 0)
    			$(this).css('opacity', currOpacity - 0.1);
            break;
		}
    });
}
    
function getRandomColor() {
    var letters = '0123456789ABCDEF';
    var color = '#';
    for (var i = 0; i < 6; i++ ) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}