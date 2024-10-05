import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_farmers/features/home/presentation/widgets/community_view_body.dart';
import 'package:nasa_farmers/features/home/presentation/widgets/home_view_body.dart';

part 'home_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(BottomBarInitial());

  static BottomBarCubit get(context)=> BlocProvider.of(context);
  
  List<Widget> screens = [
    const HomeViewBody(),
    const CommunityViewBody(),
    const HomeViewBody(),
    const HomeViewBody(),
  ];
  int currentIndex = 0;
  void changeIndex(int index){
    currentIndex = index;
    emit(ChangeIndex());
  }
}
