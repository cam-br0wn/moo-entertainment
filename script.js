const socket = io();

const mooVariations = [
    'Moo! 🐄',
    'MOOO!',
    'Mooooo 🐮',
    'MOOOOOO!',
    'moo 🐄',
    'Moo? 🐮',
    'MOOOOOOOOO!',
    'Moo Moo! 🐄',
    'Mooo~ 🐮',
    'MOO MOO MOO!',
    '🐄 Moo!',
    '🐮 MOOO!'
];

const colors = [
    '#000000',
    '#FFFFFF',
    '#8B4513',
    '#D2691E',
    '#2F4F4F',
    '#696969',
    '#A0522D',
    '#F5DEB3',
    '#DEB887',
    '#F4A460'
];

function getRandomMoo() {
    return mooVariations[Math.floor(Math.random() * mooVariations.length)];
}

function getRandomColor() {
    return colors[Math.floor(Math.random() * colors.length)];
}

function createMoo(x, y, text, color) {
    const moo = document.createElement('div');
    moo.className = 'moo';
    moo.textContent = text;
    moo.style.left = x + 'px';
    moo.style.top = y + 'px';
    moo.style.color = color;
    
    document.getElementById('moo-container').appendChild(moo);
    
    setTimeout(() => {
        moo.remove();
    }, 3000);
}

document.addEventListener('click', (e) => {
    const x = e.clientX;
    const y = e.clientY;
    const text = getRandomMoo();
    const color = getRandomColor();
    
    socket.emit('moo', { x, y, text, color });
});

document.addEventListener('touchstart', (e) => {
    e.preventDefault();
    const touch = e.touches[0];
    const x = touch.clientX;
    const y = touch.clientY;
    const text = getRandomMoo();
    const color = getRandomColor();
    
    socket.emit('moo', { x, y, text, color });
});

socket.on('moo', (data) => {
    createMoo(data.x, data.y, data.text, data.color);
});

socket.on('connect', () => {
    console.log('Connected to Moo server!');
});

socket.on('disconnect', () => {
    console.log('Disconnected from Moo server');
});