pragma experimental SMTChecker;

contract C {
	function r(bytes4 x, uint y) public pure returns (bytes1) {
		return x[y]; // oob access
	}
}
// ----
// Warning 6368: (116-120): CHC: Out of bounds access happens here.\nCounterexample:\n\nx = 0\ny = 4\n = 0\n\nTransaction trace:\nC.constructor()\nC.r(0, 4)