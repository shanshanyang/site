import assert from 'assert';
import sum from '../src/comp.js';

import MyApp from '../src/MyApp.js';



describe('simple', () => {
  it('should be sane', () => {
    assert.equal(true, !false);
  });
});

describe('sum Acceptance test cases', () => {
  it('2+3 should return correct sum value', () => {
    assert.equal(sum(2,3), 5);
  });
  it('0+5 should also return correct sum value', () => {
    assert.equal(sum(0,5), 5);
  });
  it('-1+6 should also return correct sum value', () => {
    assert.equal(sum(-1,6), 5);
  });
});