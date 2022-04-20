package com.web.student.Controller;

import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assumptions.assumeTrue;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.RepeatedTest;
import org.junit.jupiter.api.RepetitionInfo;
import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.condition.EnabledOnOs;
import org.junit.jupiter.api.condition.OS;

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
class StudentControllerTest {

	MathUnit mathUnit;
	
	@BeforeAll
	static void beforeAll() {
		System.out.println("Before All..");
	}
	
	@BeforeEach
	void init() {
		 mathUnit = new MathUnit();
	}
	
	@AfterEach
	void cleanup() {
		 System.out.println("cleaning up..");
	}
	
	@Nested
	@DisplayName("add test")
	@Tag("Math")
	class AddTest {
		
		@Test
		@DisplayName("Testing add two positive Numbers")
		void testAddPositive() {
			assertEquals(2, mathUnit.add(1, 1),"Add two Numbers return sum");
		}
		
		@Test
		@DisplayName("Testing add two positive Numbers")
		void testAddNegative() {
			//assertEquals(-2, mathUnit.add(-1, -1),"Add two Numbers return sum");
			
			int expected = -2;
			int actual = mathUnit.add(-1, -1);
			assertEquals(expected, actual,"Add two Numbers" + expected + "but return" + actual);
		}
	}
	
	@Test
	@DisplayName("mutiply method")
	@Tag("Math")
	void testMultiply() {
		//assertEquals(4, mathUnit.multiply(2, 2),"Add two Numbers return multiply");
		assertAll(
				() -> assertEquals(4, mathUnit.multiply(2, 2)),
				() -> assertEquals(0, mathUnit.multiply(2, 0)),
				() -> assertEquals(-2, mathUnit.multiply(2, -1))
				);
	}
	
	
	@Test
	@DisplayName("Testing add method")
	@Tag("Math")
	void test() {
		MathUnit mathUnit = new MathUnit();
		int expected = 2;
		int actual = mathUnit.add(1, 1);
		assertEquals(expected, actual,"Add two Numbers");
		//System.out.println("This test run");
	}
	
	@Test
	//@EnabledOnOs(OS.LINUX)
	@Tag("Math")
	void testDivide() {
		boolean isServerUp = false;
		assumeTrue(isServerUp);
		assertThrows(ArithmeticException.class, () -> mathUnit.divide(1, 0),"divide by zero");	
	}
	
	@RepeatedTest(3)
	@Tag("Circle")
	void testComputeCircle(RepetitionInfo repetitionInfo) {
		assertEquals(314.1592653589793, mathUnit.computeCircle(10),"return circle area");
	}
	
	/*
	 * @Test
	 * 
	 * @Disabled
	 * 
	 * @DisplayName("TDD Method Should not run") void testDisable() {
	 * System.out.println("This test should be disabled"); }
	 */

}
