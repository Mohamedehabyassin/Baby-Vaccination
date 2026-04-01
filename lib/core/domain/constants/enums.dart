enum UserType { guest, user }

enum GenderType {
  male,
  female;

  String get value => name;
}

enum SocialAuthenticationOptions { google, apple }

enum ToastType { success, error, warning, informative }

enum MethodologyParent {
  general,
  sections;

  static MethodologyParent getEnum(String value) {
    if (value == "twoSection") {
      return MethodologyParent.sections;
    } else {
      return MethodologyParent.general;
    }
  }
}

enum MethodologyType {
  simple,
  complex,
  assets,
  liabilities;

  static MethodologyType? getEnum(String value) {
    if (value == "simple") {
      return MethodologyType.simple;
    } else if (value == "complex") {
      return MethodologyType.complex;
    }
    return null;
  }
}

enum ModuleType { simple, general }

enum GeneralQuestionsFlowType { test, continueTest, show }

enum QuestionAnswersStatus {
  notStarted,
  inProgress,
  completed;

  static QuestionAnswersStatus getEnum(String? value) {
    if (value == "completed") {
      return QuestionAnswersStatus.completed;
    } else if (value == "in_progress") {
      return QuestionAnswersStatus.inProgress;
    } else {
      return QuestionAnswersStatus.notStarted;
    }
  }

  String get value {
    switch (this) {
      case QuestionAnswersStatus.notStarted:
        return "not_started";
      case QuestionAnswersStatus.inProgress:
        return "in_progress";
      case QuestionAnswersStatus.completed:
        return "completed";
    }
  }
}

enum ProgramStepType {
  article,
  video,
  audio,
  challenge,
  quiz,
  book,
  dailyMission,
  advice,
  journal;

  static ProgramStepType? getEnum(String? value) {
    switch (value) {
      case "article":
        return ProgramStepType.article;
      case "video":
        return ProgramStepType.video;
      case "audio":
        return ProgramStepType.audio;
      case "challenge":
        return ProgramStepType.challenge;
      case "quiz":
        return ProgramStepType.quiz;
      case "book":
        return ProgramStepType.book;
      case "daily_mission":
        return ProgramStepType.dailyMission;
      case "advice":
        return ProgramStepType.advice;
      case "journal":
        return ProgramStepType.journal;
      default:
        return null; // Default case
    }
  }
}

enum EnrichmentCategoryTypes {
  article,
  video,
  audio,
  book,
  shortVideo;

  static EnrichmentCategoryTypes? getEnum(String? value) {
    switch (value) {
      case "article":
        return EnrichmentCategoryTypes.article;
      case "video":
        return EnrichmentCategoryTypes.video;
      case "audio":
        return EnrichmentCategoryTypes.audio;
      case "book":
        return EnrichmentCategoryTypes.book;
      case "short_video":
        return EnrichmentCategoryTypes.shortVideo;
      default:
        return null; // Default case
    }
  }

  String get value {
    switch (this) {
      case EnrichmentCategoryTypes.article:
        return "article";
      case EnrichmentCategoryTypes.video:
        return "video";
      case EnrichmentCategoryTypes.audio:
        return "audio";
      case EnrichmentCategoryTypes.book:
        return "book";
      case EnrichmentCategoryTypes.shortVideo:
        return "short-video";
    }
  }
}
