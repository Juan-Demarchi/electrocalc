#include <stdio.h>

int calc(double a, double b, double c){
	if(c == 1){
		double multip = a*b;
		printf("Result: %lf\n\n", multip);
	}else{
		double divi = a/b;
		printf("Result: %lf\n\n", divi);
	}

	return 0;
}

int main(){
	// Variables.
	double v, r, i;
	int option;
	// -Ohm's law.
	//double v = i*r;
	//double r = i/v;
	//double i = r/v;

	printf("\n********************\n");
	printf("**** ElectroCalc ***\n");
	printf("********************\n\n");

	printf("What do you want to calculate?\n");
	printf("[1] Voltage.\n[2] Resistance.\n[3] Current.\n> ");
	scanf("%d", &option);
	//printf("%d", option);
	
	printf("\nEnter your respective values.\n");
	switch(option){
		case 1:
			printf("Resistance: "); scanf("%lf", &r);
			printf("Current: "); scanf("%lf", &i);
			calc(r,i,option);
			break;
		case 2:
			printf("Voltage: "); scanf("%lf", &v);
			printf("Current: "); scanf("%lf", &i);
			calc(v,i,option);
			break;
		case 3:
			printf("Voltage: "); scanf("%lf", &v);
			printf("Resistance: "); scanf("%lf", &r);
			calc(v,r,option);
			break;
		default:
			printf("An error has occured.");
			break;
	}

	return 0;
}
