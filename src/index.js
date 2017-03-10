import sum from './comp';

const app = document.createElement('main');
const text = document.createTextNode(`hello world! ${sum(2, 3)}`);

app.appendChild(text);
document.getElementById('root').appendChild(app);
