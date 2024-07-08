import 'package:flutter/material.dart';




class HourlyForecastItem extends StatelessWidget {
  final String time;
  final String temperature;
  final IconData icon;

  const HourlyForecastItem(
  {super.key,required this.time, required this.temperature,required this.icon}
  );

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 10,
      child: Container(  //instead of wrapping with sizebox wwe can use this
        width: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              //2nd card sub card
              children: [
                Text(time,
                  style:const  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
               const  SizedBox(height: 8),

                Icon(icon,
                    size: 32),

                const SizedBox(height: 8),

                Text(temperature,

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
