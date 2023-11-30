//funzioni di utilità, che possono servire a qualsiai cosa ma che non rientrano
//nella responsabilità di nessuna classe
import 'package:uuid/uuid.dart';

String generateUuid() {
  final uuid = Uuid();
  return uuid.v4(); // Generate a random UUID (version 4)
}
