void main() {
    var ceklogin = true;
    var jalan = true;
    var pin = 112233;
    var saldo = 2000000;

    void login() {
        //tanya pin user
        //user input pin
        //jika pin sama dengan input user, maka ceklogin jadikan false
        print("======================");
        print("BANK SERBA ADA");
        print("======================");
        stdout.writeln('Masukan pin rekening:');
        var inputuser = int.parse(stdin.readLineSync()!);
        if (pin == inputuser) {
            ceklogin = false;
        } else {
            print("Pin anda salah");
        }
        return;
    }

    void tampilmenu() {
        //tampil 3 jenis menu
        print("======================");
        print("BANK SERBA ADA");
        print("======================");
        print("Pilih menu :");
        print("1. Cek Saldo");
        print("2. Setor Tunai");
        print("3. Tarik Tunai");
        print("4. Keluar");
    }

    void ceksaldo() {
        //tampilkan saldo
        print('Saldo anda : $saldo');
    }

    void setor() {
        //tanya user mau setor brp
        //saldo + inputuser
        stdout.writeln("Masukkan Jumlah Setor :");
        var inputuser = int.parse(stdin.readLineSync()!);

        var total = saldo + inputuser;
        saldo = total;
    }

    void tarik() {
        //tanya user tarik brp
        //tanya pecahan 50rb atau 100rb
        //pakai lambang ~/ (250rb ~/ 100rb = 2)
        stdout.writeln("Masukkan Jumlah Tarikan:");
        var inputuser = int.parse(stdin.readLineSync()!);
        print("======================");
        print("Pilih Pecahan : ");
        print("1. 100.000");
        print("2. 50.000");

        var inputuser1 = int.parse(stdin.readLineSync()!);
        var pecahan1 = 100000;
        var pecahan2 = 50000;
        var hasil = 0;
        var sisa = 0;
        var sisa2 = 0;
        if (inputuser1 == 1) {
            hasil = inputuser ~/ pecahan1;
            print("======================");
            print("1. Pecahan 100.000 x $hasil lembar");
        }
        if (pecahan1 * hasil != inputuser) {
            sisa = inputuser - (pecahan1 * hasil);
            sisa2 = sisa ~/ pecahan2;
            print("2. Pecahan 50.000 x $hasil lembar");
        }

        var total = saldo - inputuser;
        saldo = total;
    }

    void keluar() {
        exit(0);
    }

    while (jalan == true) {
        if (ceklogin == true) {
            login();
        } else {
            tampilmenu();
            print("Masukkan menu (1/2/3/4) :");
            var inputuser = int.parse(stdin.readLineSync()!);
            switch (inputuser) {
                case 1:
                ceksaldo();
                break;

                case 2:
                setor();
                break;

                case 3:
                tarik();
                break;

                case 4:
                keluar();
                break;
            }

            //tanya user mau yang mana
            //case 1: ceksaldo()
            //case 2: setor()
            //case 3: tarik
            //jika ceklogin = true, maka jalankan login()
            //sebaliknya jalankan menu
        }
    }
    //batas coding
}