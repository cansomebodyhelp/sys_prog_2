#include "calculator.h"

int Add (double a, double b)
{
	return a + b + 0.5;
}

int Sub (double a, double b)
{
	return Add (a, -b);
}
