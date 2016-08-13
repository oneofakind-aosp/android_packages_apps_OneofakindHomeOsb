.class Lcom/sonymobile/home/settings/UserSettings$1;
.super Landroid/os/AsyncTask;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/settings/UserSettings;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentThemePackageName:Ljava/lang/String;

.field private mIconPackChanged:Z

.field private mOldAllowRotate:Z

.field final synthetic this$0:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 341
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/settings/UserSettings$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 350
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v6, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sonymobile/home/settings/UserSettings;->access$000(Lcom/sonymobile/home/settings/UserSettings;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f06000f

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->setDefaultUserSettingsIfNeeded(Landroid/content/Context;I)V
    invoke-static {v5, v6, v7}, Lcom/sonymobile/home/settings/UserSettings;->access$100(Lcom/sonymobile/home/settings/UserSettings;Landroid/content/Context;I)V

    .line 352
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v6, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sonymobile/home/settings/UserSettings;->access$000(Lcom/sonymobile/home/settings/UserSettings;)Landroid/content/Context;

    move-result-object v6

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->getUserPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v5, v6}, Lcom/sonymobile/home/settings/UserSettings;->access$200(Lcom/sonymobile/home/settings/UserSettings;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 353
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 355
    const-string v5, "user_settings_icon_size_mode"

    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "iconMode":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    const-string v6, "default"

    # setter for: Lcom/sonymobile/home/settings/UserSettings;->mIconMode:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sonymobile/home/settings/UserSettings;->access$302(Lcom/sonymobile/home/settings/UserSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    if-eqz v1, :cond_1

    .line 358
    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 368
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mAllowRotate:Z
    invoke-static {v5}, Lcom/sonymobile/home/settings/UserSettings;->access$400(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->mOldAllowRotate:Z

    .line 369
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    const-string v6, "user_settings_allow_auto_rotation"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/sonymobile/home/settings/UserSettings;->mAllowRotate:Z
    invoke-static {v5, v6}, Lcom/sonymobile/home/settings/UserSettings;->access$402(Lcom/sonymobile/home/settings/UserSettings;Z)Z

    .line 370
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    const-string v6, "user_settings_straight_to_desktop_mode"

    iget-object v7, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultStraightToDesktopMode:Z
    invoke-static {v7}, Lcom/sonymobile/home/settings/UserSettings;->access$600(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/sonymobile/home/settings/UserSettings;->mStraightToDesktopMode:Z
    invoke-static {v5, v6}, Lcom/sonymobile/home/settings/UserSettings;->access$502(Lcom/sonymobile/home/settings/UserSettings;Z)Z

    .line 372
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    const-string v6, "user_settings_show_stage_labels"

    iget-object v7, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultShowStageLabels:Z
    invoke-static {v7}, Lcom/sonymobile/home/settings/UserSettings;->access$800(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/sonymobile/home/settings/UserSettings;->mShowStageLabels:Z
    invoke-static {v5, v6}, Lcom/sonymobile/home/settings/UserSettings;->access$702(Lcom/sonymobile/home/settings/UserSettings;Z)Z

    .line 374
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v6, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sonymobile/home/settings/UserSettings;->access$000(Lcom/sonymobile/home/settings/UserSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->isAutoArrangeEnabled(Landroid/content/Context;)Z

    move-result v6

    # setter for: Lcom/sonymobile/home/settings/UserSettings;->mAutoPackItems:Z
    invoke-static {v5, v6}, Lcom/sonymobile/home/settings/UserSettings;->access$902(Lcom/sonymobile/home/settings/UserSettings;Z)Z

    .line 375
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v6, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sonymobile/home/settings/UserSettings;->access$000(Lcom/sonymobile/home/settings/UserSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->isAutomaticDesktopMode(Landroid/content/Context;)Z

    move-result v6

    # setter for: Lcom/sonymobile/home/settings/UserSettings;->mAutomaticDesktop:Z
    invoke-static {v5, v6}, Lcom/sonymobile/home/settings/UserSettings;->access$1002(Lcom/sonymobile/home/settings/UserSettings;Z)Z

    .line 377
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    const-string v6, "user_settings_show_keyboard_when_entering_search_apps"

    iget-object v7, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultIsKeyboardShownInSearchApps:Z
    invoke-static {v7}, Lcom/sonymobile/home/settings/UserSettings;->access$1200(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/sonymobile/home/settings/UserSettings;->mIsKeyboardShownInSearchApps:Z
    invoke-static {v5, v6}, Lcom/sonymobile/home/settings/UserSettings;->access$1102(Lcom/sonymobile/home/settings/UserSettings;Z)Z

    .line 379
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    const-string v6, "user_settings_personalize_recommendations"

    iget-object v7, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultPersonalizeRecommendations:Z
    invoke-static {v7}, Lcom/sonymobile/home/settings/UserSettings;->access$1400(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/sonymobile/home/settings/UserSettings;->mPersonalizeRecommendations:Z
    invoke-static {v5, v6}, Lcom/sonymobile/home/settings/UserSettings;->access$1302(Lcom/sonymobile/home/settings/UserSettings;Z)Z

    .line 386
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v6, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    const-string v7, "user_settings_page_transition"

    iget-object v8, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    invoke-static {v8}, Lcom/sonymobile/home/settings/UserSettings;->access$1600(Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/home/settings/UserSettings$PageTransition;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    invoke-static {v8}, Lcom/sonymobile/home/settings/UserSettings;->access$1600(Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    move-result-object v8

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->getValidPageTransitionFromString(Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings$PageTransition;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    invoke-static {v6, v7, v8}, Lcom/sonymobile/home/settings/UserSettings;->access$1700(Lcom/sonymobile/home/settings/UserSettings;Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings$PageTransition;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    move-result-object v6

    # setter for: Lcom/sonymobile/home/settings/UserSettings;->mPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    invoke-static {v5, v6}, Lcom/sonymobile/home/settings/UserSettings;->access$1502(Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/settings/UserSettings$PageTransition;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    .line 390
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    const-string v6, "home_settings_app_recommendations"

    iget-object v7, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultOnlineSuggestionsOn:Z
    invoke-static {v7}, Lcom/sonymobile/home/settings/UserSettings;->access$1900(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/sonymobile/home/settings/UserSettings;->mOnlineSuggestionsOn:Z
    invoke-static {v5, v6}, Lcom/sonymobile/home/settings/UserSettings;->access$1802(Lcom/sonymobile/home/settings/UserSettings;Z)Z

    .line 393
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v5}, Lcom/sonymobile/home/settings/UserSettings;->updateIconSizes()V

    .line 396
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sonymobile/home/settings/UserSettings;->access$000(Lcom/sonymobile/home/settings/UserSettings;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/home/runtimeskinning/ThemeUtils;->getCurrentThemePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->mCurrentThemePackageName:Ljava/lang/String;

    .line 397
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v6, p0, Lcom/sonymobile/home/settings/UserSettings$1;->mCurrentThemePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sonymobile/home/settings/UserSettings;->hasThemeChanged(Ljava/lang/String;)Z

    move-result v0

    .line 399
    .local v0, "hasThemeChanged":Z
    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sonymobile/home/settings/UserSettings;->access$000(Lcom/sonymobile/home/settings/UserSettings;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/home/settings/UserSettings$1;->mCurrentThemePackageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sonymobile/home/iconpacks/IconPacksUtility;->hasIconPackChangedInCurrentTheme(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    iput-boolean v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->mIconPackChanged:Z

    .line 402
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # setter for: Lcom/sonymobile/home/settings/UserSettings;->mLoaded:Z
    invoke-static {v3, v4}, Lcom/sonymobile/home/settings/UserSettings;->access$2002(Lcom/sonymobile/home/settings/UserSettings;Z)Z

    .line 403
    return-object v9

    .line 358
    .end local v0    # "hasThemeChanged":Z
    :sswitch_0
    const-string v6, "default"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto/16 :goto_0

    :sswitch_1
    const-string v6, "small"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto/16 :goto_0

    .line 361
    :pswitch_0
    iget-object v5, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # setter for: Lcom/sonymobile/home/settings/UserSettings;->mIconMode:Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/sonymobile/home/settings/UserSettings;->access$302(Lcom/sonymobile/home/settings/UserSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x6879507 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 341
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/settings/UserSettings$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "params"    # Ljava/lang/Void;

    .prologue
    .line 408
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mListeners:Ljava/util/List;
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$2100(Lcom/sonymobile/home/settings/UserSettings;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;

    .line 409
    .local v2, "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    invoke-interface {v2}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;->onUserSettingsLoaded()V

    goto :goto_0

    .line 412
    .end local v2    # "listener":Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mAppTrayIconSize:I
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$2200(Lcom/sonymobile/home/settings/UserSettings;)I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultAppTrayIconSize:I
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$2300(Lcom/sonymobile/home/settings/UserSettings;)I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mStageIconSize:I
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$2400(Lcom/sonymobile/home/settings/UserSettings;)I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultStageIconSize:I
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$2500(Lcom/sonymobile/home/settings/UserSettings;)I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mIconSize:I
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$2600(Lcom/sonymobile/home/settings/UserSettings;)I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultIconSize:I
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$2700(Lcom/sonymobile/home/settings/UserSettings;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 415
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->notifyIconSizeChanged()V
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$2800(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 418
    :cond_2
    iget-boolean v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->mOldAllowRotate:Z

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mAllowRotate:Z
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$400(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v4

    if-eq v3, v4, :cond_3

    .line 419
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mAllowRotate:Z
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$400(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v4

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->notifyAllowRotateChanged(Z)V
    invoke-static {v3, v4}, Lcom/sonymobile/home/settings/UserSettings;->access$2900(Lcom/sonymobile/home/settings/UserSettings;Z)V

    .line 422
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mStraightToDesktopMode:Z
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$500(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultStraightToDesktopMode:Z
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$600(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v4

    if-eq v3, v4, :cond_4

    .line 423
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->notifyStraightToDesktopModeChanged()V
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$3000(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 426
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mShowStageLabels:Z
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$700(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultShowStageLabels:Z
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$800(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v4

    if-eq v3, v4, :cond_5

    .line 427
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->notifyShowStageLabelsChanged()V
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$3100(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 430
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mAutoPackItems:Z
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$900(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultAutoPackItems:Z
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$3200(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v4

    if-eq v3, v4, :cond_6

    .line 431
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mAutoPackItems:Z
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$900(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v4

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->notifyAutoPackItemsChanged(Z)V
    invoke-static {v3, v4}, Lcom/sonymobile/home/settings/UserSettings;->access$3300(Lcom/sonymobile/home/settings/UserSettings;Z)V

    .line 434
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mAutomaticDesktop:Z
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$1000(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultAutomaticDesktopEnabled:Z
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$3400(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v4

    if-eq v3, v4, :cond_7

    .line 435
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mAutomaticDesktop:Z
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$1000(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v4

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->notifyAutomaticDesktopModeChanged(Z)V
    invoke-static {v3, v4}, Lcom/sonymobile/home/settings/UserSettings;->access$3500(Lcom/sonymobile/home/settings/UserSettings;Z)V

    .line 438
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$1500(Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$1600(Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    move-result-object v4

    if-eq v3, v4, :cond_8

    .line 439
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mPageTransition:Lcom/sonymobile/home/settings/UserSettings$PageTransition;
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$1500(Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/settings/UserSettings$PageTransition;

    move-result-object v4

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->notifyPageTransitionChanged(Lcom/sonymobile/home/settings/UserSettings$PageTransition;)V
    invoke-static {v3, v4}, Lcom/sonymobile/home/settings/UserSettings;->access$3600(Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/settings/UserSettings$PageTransition;)V

    .line 442
    :cond_8
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mOnlineSuggestionsOn:Z
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$1800(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultOnlineSuggestionsOn:Z
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$1900(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v4

    if-eq v3, v4, :cond_9

    .line 443
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mOnlineSuggestionsOn:Z
    invoke-static {v4}, Lcom/sonymobile/home/settings/UserSettings;->access$1800(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v4

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->notifyOnlineSuggestionsChanged(Z)V
    invoke-static {v3, v4}, Lcom/sonymobile/home/settings/UserSettings;->access$3700(Lcom/sonymobile/home/settings/UserSettings;Z)V

    .line 450
    :cond_9
    const/4 v1, 0x0

    .line 453
    .local v1, "iconPackChangedByTheme":Z
    iget-boolean v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->mIconPackChanged:Z

    if-eqz v3, :cond_a

    .line 454
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$000(Lcom/sonymobile/home/settings/UserSettings;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/settings/UserSettings$1;->mCurrentThemePackageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/sonymobile/home/iconpacks/IconPacksUtility;->setIconPackPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 458
    :cond_a
    if-nez v1, :cond_b

    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mIconPack:Lcom/sonymobile/home/iconpacks/IconPack;
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$3800(Lcom/sonymobile/home/settings/UserSettings;)Lcom/sonymobile/home/iconpacks/IconPack;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 459
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->clearIconCaches()V
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$3900(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 460
    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$1;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->notifyIconPackChanged()V
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$4000(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 462
    :cond_b
    return-void
.end method
