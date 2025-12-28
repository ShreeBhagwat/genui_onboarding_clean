import 'package:genui_onboarding_clean/genui_core/genui_mini.dart';
import 'package:genui_onboarding_clean/genui/system_instructions.dart';

class PlanMyTripGenUiSession {
  final GenUiConversation conversation;
  final GenUiHost host;
  // ignore: unused_field
  final GenUiManager _manager;

  PlanMyTripGenUiSession._({
    required this.conversation,
    required this.host,
    required GenUiManager manager,
  }) : _manager = manager;

  static Future<PlanMyTripGenUiSession> create(String apiKey) async {
    final catalog = CoreCatalogItems.asCatalog();
    final manager = GenUiManager(catalog: catalog);

    final contentGenerator = GoogleGenerativeAiContentGenerator(
      catalog: catalog,
      systemInstruction: travelSystemInstruction,
      modelName: 'models/gemini-2.5-flash',
      apiKey: apiKey,
    );

    final conversation = GenUiConversation(
      contentGenerator: contentGenerator,
      manager: manager,
    );

    final host = GenUiHost(manager: manager);
    // Inject host into generator so it can push updates
    contentGenerator.host = host;

    return PlanMyTripGenUiSession._(
      conversation: conversation,
      host: host,
      manager: manager,
    );
  }

  void dispose() {
    // Any specific disposal logic for conversation or manager if they support it
  }
}
