#include <iostream>
#include <string>

using namespace std;

void procesarPago(int opcion) {
    string nroTarjeta, fecha, cvv;
    string direccionBTC;

    switch(opcion) {
        case 1:
        case 2:
            cout << "\n--- Datos de Tarjeta ---" << endl;
            cout << "Numero de Tarjeta: "; cin >> nroTarjeta;
            cout << "Fecha Vencimiento (MM/AA): "; cin >> fecha;
            cout << "CVV: "; cin >> cvv;
            cout << "\n[!] Pago procesado exitosamente con Tarjeta." << endl;
            break;
        case 3:
            cout << "\n--- Pago con Bitcoin ---" << endl;
            cout << "Ingrese su direccion de billetera BTC: "; cin >> direccionBTC;
            cout << "\n[!] Transaccion enviada a la red Blockchain. Esperando confirmacion..." << endl;
            break;
        default:
            cout << "\n[X] Opcion no valida." << endl;
    }
}

int main() {
    int opcion;
    
    cout << "========================================" << endl;
    cout << "   SISTEMA DE PAGOS - UNET SMART HUB   " << endl;
    cout << "========================================" << endl;
    cout << "1. Visa" << endl;
    cout << "2. MasterCard" << endl;
    cout << "3. Bitcoin" << endl;
    cout << "4. Salir" << endl;
    cout << "----------------------------------------" << endl;
    cout << "Seleccione su metodo de pago: ";
    cin >> opcion;

    if (opcion >= 1 && opcion <= 3) {
        procesarPago(opcion);
    } else if (opcion == 4) {
        cout << "Saliendo del sistema..." << endl;
    } else {
        cout << "Opcion invalida." << endl;
    }
//finalizado

    return 0;
}
