import 'package:angular/angular.dart';
import 'src/hero.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/mock_heroes.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, formDirectives]
)
class AppComponent {
  final name = 'Angular';
  final title = 'Tour of Heroes';
  Hero selected;

  Hero hero = Hero(1, 'Windstorm');
  List<Hero> heroes = mockHeroes;

  void onSelect(Hero hero) => selected = hero;

}
