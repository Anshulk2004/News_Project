// import 'package:newsproj/models/category_model.dart';
import 'package:newsproj/models/slider_model.dart';

List<SliderModel> getSliders() {
  List<SliderModel> slider = [];
  SliderModel categoryModel = SliderModel();

  categoryModel.image = "images/chill_guy.jpg";
  categoryModel.name = "Be Chill and Relax";
  slider.add(categoryModel);
  categoryModel = SliderModel();

  categoryModel.image = "images/Ozibook.jpg";
  categoryModel.name = "Data Analysis Internship";
  slider.add(categoryModel);
  categoryModel = SliderModel();

  categoryModel.image = "images/anshul_kumar.jpg";
  categoryModel.name = "Full Stack Web/Mobile Devloper Intern";
  slider.add(categoryModel);
  categoryModel = SliderModel();

  return slider;
}
