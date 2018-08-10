import 'dart:async';

import 'package:angular/angular.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';
import 'src/hero_component.dart';
import 'src/hero_service.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    styleUrls: ['app_component.css'],
    directives: [coreDirectives, HeroComponent],
    providers: [ClassProvider(HeroService)])
class AppComponent implements OnInit {
  final name = 'Angular';
  final title = 'Tour of Heroes';
  Hero selected;

  Hero hero = Hero(1, 'Windstorm');
  List<Hero> heroes;
  final HeroService _heroService;
  AppComponent(this._heroService);

  void ngOnInit() => _getHeroes();
  Future<void> _getHeroes() async {
    heroes = await _heroService.getAllSlowly();
  } 
  void onSelect(Hero hero) => selected = hero;

}
