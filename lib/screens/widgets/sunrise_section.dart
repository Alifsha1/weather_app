import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:samplebloc/bloc/weather_bloc_bloc.dart';

Row sunriseSection(WeatherBlocSuccess state) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Image.asset(
            'assets/weather2.png',
            scale: 8,
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              const Text(
                'Sunrise',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                DateFormat().add_jm().format(state.weather.sunset!),
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
            'assets/weather3.png',
            scale: 8,
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              const Text(
                'Sunset',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                DateFormat().add_jm().format(state.weather.sunrise!),
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
