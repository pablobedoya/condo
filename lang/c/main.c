#include <stdio.h>
#include "Gates_i.c"

void gates() {
	Gates__INITIALISATION();
    Gates__open_gate(5);
    Gates__close_gate(2);
}

void apartment() {

}

int main() {
    printf("----- INICIANDO O CODIGO GERADO PELA IMPLEMENTACAO -----\n\n");
    gates();
    apartment();
    printf("\n\n----- FINALIZANDO O CODIGO GERADO PELA IMPLEMENTACAO -----\n\n");
    
    return 0;
}