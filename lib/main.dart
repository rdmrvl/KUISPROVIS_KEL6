import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz UI Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false, // Menghilangkan tanda debug
      home: const MyHomePage(title: 'Quiz UI Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Nomor Kelompok:  [6]',
            ),
            const Text(
              'Mhs 1:  [2101294, Fikry Idham D]',
            ),
            const Text(
              'Mhs 2:  [2200481, Marvel Ravindra D]',
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo1();
                  }));
                },
                child: const Text('   Jawaban No 1   '),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo2();
                  }));
                },
                child: const Text('   Jawaban No 2   '),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //jaawaban no 1
  Widget soalNo1() {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFFF5CD46),
        ),
        body: SingleChildScrollView(child: FormWithBackground()));
  }

  //jaawaban no 2
  Widget soalNo2() {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      primary:
          true, // Ensure that the AppBar touches the top edge of the screen
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background Image with white background
            // Container for the image with white background
            Container(
              color: Colors.white,
              child: Image(
                fit: BoxFit.fitWidth, // Stretch the image to fit width
                width: double.infinity, // Set width to 100%
                height: 200, // Set the desired height
                image: NetworkImage('https://picsum.photos/id/490/300/200'),
              ),
            ),

            // Content including the AppBar
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20), // Add padding at the top
                  child: AppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.transparent,
                    iconTheme: const IconThemeData(
                      color: Colors.white, // Mengatur warna ikon menjadi putih
                      size: 24,
                    ),
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.shopping_cart),
                        onPressed: () {
                          // Tambahkan logika ketika tombol cart ditekan
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.notifications),
                        onPressed: () {
                          // Tambahkan logika ketika tombol notification ditekan
                        },
                      ),
                      Stack(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.chat),
                            onPressed: () {
                              // Tambahkan logika ketika tombol chat ditekan
                            },
                          ),
                        ],
                      ),
                    ],
                    elevation: 0, // Menghilangkan shadow AppBar
                    title: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Color(0xFFE6DCE6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search, color: Colors.black54),
                          const SizedBox(width: 5),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Cari barang dari Tokoo',
                                hintStyle: TextStyle(
                                    fontSize: 14), // Adjust font size as needed
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                    height:
                        125), // Add space between AppBar and "Halo, Budi!" text
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        'Halo, Budi!',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),

                Center(
                  child: Container(
                    width: 300, // Atur lebar container
                    height: 80, // Atur tinggi container
                    decoration: BoxDecoration(
                      color: Color(0xFFE6DCE6),
                      borderRadius:
                          BorderRadius.circular(5), // Atur radius border
                      border: Border.all(
                          color: Colors.black), // Atur outline border
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            border: Border(
                                right:
                                    BorderSide(color: Colors.black, width: 1)),
                          ),
                          child: _buildIconText(
                              Icons.payment, 'Store\nCredit\n Rp.0'),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            border: Border(
                                right:
                                    BorderSide(color: Colors.black, width: 1)),
                          ),
                          child: _buildIconText(
                              Icons.discount, 'Reward\nPoint\n100 Point'),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(),
                          child: _buildIconText(
                              Icons.airplane_ticket, 'Kupon\nSaya\n11 Kupon'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Transform.scale(
                                    scale:
                                        1.5, // Adjust the scale factor as needed
                                    child: IconButton(
                                      icon: Icon(Icons.store,
                                          color: Colors.black),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Text('Official Store',
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                              Column(
                                children: [
                                  Transform.scale(
                                    scale:
                                        1.5, // Adjust the scale factor as needed
                                    child: IconButton(
                                      icon: Icon(Icons.whatshot,
                                          color: Colors.red),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Text('Hot Deal',
                                      style: TextStyle(color: Colors.red)),
                                ],
                              ),
                              Column(
                                children: [
                                  Transform.scale(
                                    scale:
                                        1.5, // Adjust the scale factor as needed
                                    child: IconButton(
                                      icon: Icon(Icons.shopping_bag,
                                          color: Colors.black),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Text('Fashion',
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                              Column(
                                children: [
                                  Transform.scale(
                                    scale:
                                        1.5, // Adjust the scale factor as needed
                                    child: IconButton(
                                      icon:
                                          Icon(Icons.face, color: Colors.black),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Text('Kosmetik',
                                      style: TextStyle(color: Colors.black)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                _buildCarousel(), // Adding the carousel container here
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        backgroundColor: Color(0xFFE6DCE6),
        unselectedIconTheme: const IconThemeData(color: Colors.black, size: 30),
        currentIndex: _selectedIndex, // Set the current index
        onTap: _onItemTapped, // Handle item tap
        items: [
          _buildBottomNavigationBarItem(
              Icons.home, 'Beranda', 0, _selectedIndex),
          _buildBottomNavigationBarItem(
              Icons.category, 'Kategori', 1, _selectedIndex),
          _buildBottomNavigationBarItem(
              Icons.qr_code_scanner, 'Scan', 2, _selectedIndex),
          _buildBottomNavigationBarItem(
              Icons.shopping_cart, 'List Belanja', 3, _selectedIndex),
          _buildBottomNavigationBarItem(
              Icons.account_circle, 'Akun', 4, _selectedIndex),
        ],
      ),
    );
  }
}

Widget _buildCarousel() {
  List<String> imageUrls = [
    'https://img.freepik.com/premium-photo/tranquil-scene-mountain-reflection-dusk-generative-ai_974732-202.jpg',
    'https://img.freepik.com/premium-photo/tranquil-scene-mountain-reflection-dusk-generative-ai_974732-202.jpg',
    'https://img.freepik.com/premium-photo/tranquil-scene-mountain-reflection-dusk-generative-ai_974732-202.jpg',
    'https://img.freepik.com/premium-photo/tranquil-scene-mountain-reflection-dusk-generative-ai_974732-202.jpg',
    'https://img.freepik.com/premium-photo/tranquil-scene-mountain-reflection-dusk-generative-ai_974732-202.jpg',
  ];

  final PageController _pageController = PageController(viewportFraction: 0.8);

  return SizedBox(
    height: 200,
    child: PageView.builder(
      itemCount: imageUrls.length,
      controller: _pageController,
      itemBuilder: (BuildContext context, int index) {
        return AnimatedBuilder(
          animation: _pageController,
          builder: (BuildContext context, Widget? child) {
            double value = 1.0;
            if (_pageController.position.haveDimensions) {
              value = _pageController.page! - index.toDouble();
              value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
            }
            return Center(
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width *
                    0.8 *
                    value, // Adjusting container width
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Image.network(
                      imageUrls[index],
                      // Fill the box without distorting the image
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    ),
  );
}

Widget _buildIconText(IconData icon, String text) {
  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
            size: 20, color: Color(0xFF735546)), // Ubah ukuran ikon menjadi 20
        SizedBox(width: 5), // Jarak antara ikon dan teks
        Text(text, textAlign: TextAlign.center),
      ],
    ),
  );
}

BottomNavigationBarItem _buildBottomNavigationBarItem(
    IconData icon, String label, int index, int selectedIndex) {
  return BottomNavigationBarItem(
    icon: Tooltip(
      message: label,
      child: Container(
        width: 80, // Adjust size as needed
        height: 40, // Adjust size as needed
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20), // Rounded left corner for the first item
            right:
                Radius.circular(20), // Rounded right corner for the last item
          ),
          color: selectedIndex == index
              ? Color(0xFFF5C341)
              : Colors.transparent, // Change color based on selection
        ),
        child: Icon(icon),
      ),
    ),
    label: label,
  );
}

class FormWithBackground extends StatefulWidget {
  @override
  _FormWithBackgroundState createState() => _FormWithBackgroundState();
}

class _FormWithBackgroundState extends State<FormWithBackground> {
  String? selectedGender;
  DateTime? selectedDate;

  // Define a function to show the date picker
  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background - Yellow Half
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: Container(
            height: MediaQuery.of(context).size.height / 3, // Cover top half
            decoration: BoxDecoration(
              color: Color(0xFFF5CD46),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50), // Rounded bottom left
                bottomRight: Radius.circular(50), // Rounded bottom right
              ),
            ),
          ),
        ),
        // Background - White Half
        Positioned.fill(
          top: MediaQuery.of(context).size.height / 1,
          child: Container(
            color: Colors.white,
          ),
        ),
        // Profile Picture
        Positioned(
          top: 60, // Adjust the position according to your layout
          right: 40, // Adjust the position according to your layout
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUShr95qjh6XfiXOfpkNyHMFocwky4NkBzng&usqp=CAU'),
          ),
        ),
        // Your Name Text
        Positioned(
          top: 65, // Adjust the position according to your layout
          left: 30, // Adjust the position according to your layout
          child: Text(
            'Budi Martami',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // Form
        Padding(
          padding: EdgeInsets.only(top: 130),
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding:
                  EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Colors.black), // Updated border color to black
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Ubah Profile',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Nama Depan', // Title for the TextFormField
                  ),
                  TextFormField(),
                  SizedBox(height: 20),
                  Text(
                    'Nama Belakang', // Title for the TextFormField
                  ),
                  TextFormField(),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Center(
                              child: Text(
                                'Gender', // Title for the first container
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black,
                                ),
                              ),
                              child: DropdownButton<String>(
                                hint: Text('Perempuan'),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedGender = newValue;
                                  });
                                },
                                value: selectedGender,
                                items: <String>[
                                  'Laki-Laki',
                                  'Perempuan',
                                  'Lainnya'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 11,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Tanggal Lahir', // Title for the second container
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                              ),
                              child: Row(
                                children: [
                                  Spacer(flex: 2),
                                  Text(
                                    selectedDate != null
                                        ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                                        : 'DD/MM/YYYY',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: selectedDate != null
                                          ? Colors.black
                                          : Colors
                                              .grey, // Apply grey color if selectedDate is null
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      _selectDate(context);
                                    },
                                    icon: Icon(Icons.calendar_today),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Alamat', // Title for the TextFormField
                  ),
                  TextFormField(),
                  SizedBox(height: 100),
                  // Wrapped the ElevatedButton with Container to set its width
                  Container(
                    width: double.infinity, // Set width to fill available space
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF5CD46),
                          // Adjust padding as needed
                          padding: EdgeInsets.symmetric(horizontal: 55),
                        ),
                        child: Text('Simpan',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
