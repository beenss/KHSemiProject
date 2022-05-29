package com.boribob.utils;

import java.util.ArrayList;

public class Algorithms {
	public int bitmask(ArrayList<Integer> petDetails, int targetNumber) {
		for (int i = 0; i < petDetails.size(); i++) {
			targetNumber |= (petDetails.get(i) << i);
		}
		return targetNumber;
	}
}
