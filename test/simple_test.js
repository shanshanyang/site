import assert from 'assert';
import sum from '../src/comp.js';

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