class ItemDesign extends StatelessWidget {
  const ItemDesign( {
        super.key,

//                required this.imagePath,
//                required this.dishName,
//                required this.dishPrice,
    });

    final String imagePath;
    final String dishName;
    final String dishPrice;

    @override
    Widget build(BuildContext context) {
        return Container(
                decoration:BoxDecoration(
                border:Border.all(color:Color(0xFF173033)),
        borderRadius:
        BorderRadius.circular(10)),
        child: const Column(
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
        Image(
                image:AssetImage(

                imagePath),
                width:69,
                height:69,
          ),
        Text(
                dishName,
                style:TextStyle(color:Color(0xFF89BA2D), fontSize:16),
          ),
        Text(
                dishPrice,
                style:TextStyle(
                color:Color(0xFF89BA2D),
                fontSize:16,
                fontWeight:FontWeight.w700),
          ),
        ],
      ),
    );
    }
}
