'use strict';

console.log('Iniciando projeto');

const entries = [
	13,
	125,
	50,
	30,
	0,
	1,
]


const convertToBinary = (num) => {
	let binary = [];

	for (let i = num; i > 0; i = Math.floor(i/2)) {
		binary.push(i%2);
	}

	if(num === 0) return '0b'

	return binary.reverse().join('') + 'b';
}

const exec = (entries) => console.log(entries.map(num => {
	const binary = convertToBinary(num);

	return `${num} = ${binary}`;
}));

(() => exec(entries))();
