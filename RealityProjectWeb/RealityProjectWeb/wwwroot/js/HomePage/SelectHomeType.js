
let BestOne = document.querySelector('#BestOne');
let Flats = document.querySelector('#Flats');
let Houses = document.querySelector('#Houses');
let Cottages = document.querySelector('#Cottages');
let Luxury = document.querySelector('#Luxury');

HideAll();
BestOne.style.display = 'block';

function ChangeSelection(para) {
    console.log(para);
    HideAll();

    switch (para) {
        case 0:
            Flats.style.display = 'block';
            console.log(Flats);
            break;
        case 1:
            Luxury.style.display = 'block';
            break;
        case 2:
            Houses.style.display = 'block';
            break;
        case 3:
            Cottages.style.display = 'block';
            break;
    default:
    }

}

function HideAll() {
    BestOne.style.display = 'none';
    Flats.style.display = 'none';
    Houses.style.display = 'none';
    Cottages.style.display = 'none';
    Luxury.style.display = 'none';
}



