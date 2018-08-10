import 'package:angular/angular.dart';
import 'hero.dart';

@Component(
  selector: 'my-app',
  template: '''
    <h1>{{title}}</h1>
    <h2>{{hero.name}}</h2>
    <div><label>id: </label>{{hero.id}}</div>
    <div><label>name: </label>{{hero.name}}</div>
  ''',
)
class AppComponent {
  final name = 'Angular';
  final title = 'Tour of Heroes';
 
  Hero hero = Hero(1, 'Windstorm');

}
