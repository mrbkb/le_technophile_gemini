import 'package:hive/hive.dart';
import 'package:le_technophile_gemini/constants.dart';
import 'package:le_technophile_gemini/hive/chat_history.dart';
import 'package:le_technophile_gemini/hive/settings.dart';
import 'package:le_technophile_gemini/hive/user_model.dart';

class Boxes {
  //get the chat history box
  static Box<ChatHistory> getChatHistory() =>
      Hive.box<ChatHistory>(Constants.chatHistoryBox);

  //get user box
  static Box<UserModel> getUser() => Hive.box<UserModel>(Constants.userBox);

  //get settings box
  static Box<Settings> getSettings() => Hive.box<Settings>(Constants.settingsBox);
}
