import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/mock_data.dart';
import '../../../models/venue_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List<VenueModel> venuesList = venues;

  void selectVenue(int index) {
    venuesList = List.generate(
      venuesList.length,
          (i) => venuesList[i].copyWith(isSelected: i == index),
    );

    emit(VenueSelected());
  }
}