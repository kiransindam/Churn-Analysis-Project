document.querySelector('.form-wrapper').addEventListener('mousemove', (e) => {
    const { offsetWidth: width, offsetHeight: height } = e.target;
    let { offsetX: x, offsetY: y } = e;

    if (e.target !== e.currentTarget) {
        x = x + e.target.offsetLeft;
        y = y + e.target.offsetTop;
    }

    const xMove = (x / width) * 50 - 25;
    const yMove = (y / height) * 50 - 25;

    e.target.style.transform = `rotateY(${
