import 'package:flutter/material.dart';
import 'package:samplebloc/bloc/weather_bloc_bloc.dart';

Row tempSection(WeatherBlocSuccess state) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Image.asset(
            'assets/weather4.png',
            scale: 8,
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              const Text(
                'Temp Max',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                '${state.weather.tempMax!.celsius!.round()}°C',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
      Row(
        children: [
          Image.asset(
            'assets/weather5.png',
            scale: 8,
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              const Text(
                'Temp Min',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                '${state.weather.tempMin!.celsius!.round()}°C',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    ],
  );
}