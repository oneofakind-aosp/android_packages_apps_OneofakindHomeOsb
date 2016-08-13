.class public abstract Lcom/sonymobile/home/search/SearchablePageViewPresenter;
.super Lcom/sonymobile/home/presenter/PageViewPresenter;
.source "SearchablePageViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;
    }
.end annotation


# instance fields
.field private final mSearchSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

.field protected final mSearchableModelsWrapper:Lcom/sonymobile/home/search/SearchableModelsWrapper;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/search/SearchableModelsWrapper;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 10
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p2, "model"    # Lcom/sonymobile/home/model/Model;
    .param p3, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;
    .param p4, "dialogHandler"    # Lcom/sonymobile/home/DialogHandler;
    .param p5, "fragmentHandler"    # Lcom/sonymobile/home/FragmentHandler;
    .param p6, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p7, "statisticsManager"    # Lcom/sonymobile/home/statistics/StatisticsManager;
    .param p8, "searchableModelsWrapper"    # Lcom/sonymobile/home/search/SearchableModelsWrapper;
    .param p9, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 127
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/home/presenter/PageViewPresenter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 129
    if-eqz p3, :cond_0

    .line 130
    const/16 v1, 0xa

    invoke-static {}, Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;->getSharedListener()Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lcom/sonymobile/home/IntentHandler;->addActivityResultListener(ILcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;)V

    .line 134
    :cond_0
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mSearchableModelsWrapper:Lcom/sonymobile/home/search/SearchableModelsWrapper;

    .line 135
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/home/HomeApplication;->getSearchSuggestionsModel(Landroid/content/Context;)Lcom/sonymobile/home/search/SearchSuggestionsModel;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mSearchSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/search/SearchablePageViewPresenter;Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchablePageViewPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/data/FolderItem;
    .param p2, "x2"    # Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->openFolderOnCurrentPage(Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/search/SearchablePageViewPresenter;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/SearchablePageViewPresenter;
    .param p1, "x1"    # Lcom/sonymobile/home/data/Item;
    .param p2, "x2"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->startJumpAnimation(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V

    return-void
.end method

.method private getItemFromIntent(Landroid/content/Intent;)Lcom/sonymobile/home/data/Item;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v3, -0x80000000

    .line 219
    const-string v2, "com.sonymobile.home.search.intent.extra.SEARCH_SUGGESTION_UNIQUE_ID"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 221
    .local v1, "searchSuggestionId":I
    const/4 v0, 0x0

    .line 223
    .local v0, "item":Lcom/sonymobile/home/data/Item;
    if-eq v1, v3, :cond_0

    .line 224
    invoke-static {v1}, Lcom/sonymobile/home/search/SearchAdapterHelper;->getItem(I)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 227
    :cond_0
    return-object v0
.end method

.method private getSearchItemFromIntent(Landroid/content/Intent;)Lcom/sonymobile/home/data/Item;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 209
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->getItemFromIntent(Landroid/content/Intent;)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    goto :goto_0
.end method

.method private getSearchTrackingCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {v0}, Lcom/sonymobile/home/settings/UserSettings;->isAutomaticDesktopEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ModernMode_Search"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ClassicMode_Search"

    goto :goto_0
.end method

.method private handleSearchResult(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 191
    invoke-direct {p0, p2}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->getSearchItemFromIntent(Landroid/content/Intent;)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 193
    .local v0, "affectedItem":Lcom/sonymobile/home/data/Item;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->handleFailedSearch(Z)V

    .line 205
    :goto_0
    invoke-static {}, Lcom/sonymobile/home/search/SearchAdapterHelper;->clearModel()V

    .line 206
    return-void

    .line 196
    :cond_1
    const-string v1, "com.sonymobile.home.search.intent.action.LAUNCH_ITEM"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->prepareForSearchActivityLaunch()V

    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->launchSearchItem(Lcom/sonymobile/home/data/Item;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 199
    :cond_2
    const-string v1, "com.sonymobile.home.search.intent.action.LOCATE_ITEM"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    invoke-virtual {p0, v0, p2}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->locateSearchItem(Lcom/sonymobile/home/data/Item;Landroid/content/Intent;)V

    goto :goto_0

    .line 202
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->handleFailedSearch(Z)V

    goto :goto_0
.end method

.method private launchSearch(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonymobile/home/search/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    const-string v1, "com.sonymobile.home.search.intent.extra.SHOW_STATUS_BAR"

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;

    invoke-interface {v2}, Lcom/sonymobile/home/FragmentHandler;->isStatusBarShown()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    const/16 v2, 0xa

    const-string v3, ""

    invoke-interface {v1, v0, v2, v3, p1}, Lcom/sonymobile/home/IntentHandler;->launchActivityForResult(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 168
    return-void
.end method

.method private launchSearchItem(Lcom/sonymobile/home/data/Item;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 231
    instance-of v2, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v2, :cond_1

    .line 232
    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    move-object v2, p1

    .line 234
    check-cast v2, Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {p0, v2, p2}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->launchApplication(Lcom/sonymobile/home/data/ActivityItem;Landroid/graphics/Rect;)V

    .line 235
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/statistics/StatisticsManager;->incrementStartCount(Lcom/sonymobile/home/data/Item;)V

    .line 236
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mSearchSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->notifyAppLaunched(Lcom/sonymobile/home/data/Item;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->trackSearchItemLaunched(Lcom/sonymobile/home/data/Item;)V

    .line 249
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    instance-of v2, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v2, :cond_2

    .line 240
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-static {v2, p2}, Lcom/sonymobile/home/presenter/HomeAnimationUtils;->makeLaunchAnimation(Lcom/sonymobile/flix/components/Scene;Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, "options":Landroid/os/Bundle;
    move-object v2, p1

    .line 241
    check-cast v2, Lcom/sonymobile/home/data/ShortcutItem;

    iget-object v3, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->launchShortcut(Lcom/sonymobile/home/data/ShortcutItem;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 242
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/statistics/StatisticsManager;->incrementStartCount(Lcom/sonymobile/home/data/Item;)V

    .line 243
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mSearchSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->notifyAppLaunched(Lcom/sonymobile/home/data/Item;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->trackSearchItemLaunched(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 245
    .end local v1    # "options":Landroid/os/Bundle;
    :cond_2
    instance-of v2, p1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 246
    check-cast v2, Lcom/sonymobile/home/data/FolderItem;

    invoke-direct {p0, v2}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->openFolder(Lcom/sonymobile/home/data/FolderItem;)V

    .line 247
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->trackSearchItemLaunched(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0
.end method

.method private openFolder(Lcom/sonymobile/home/data/FolderItem;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 266
    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v2

    iget v0, v2, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 267
    .local v0, "pageToLocate":I
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->getPageViewGroupToOpenFolderOn(Lcom/sonymobile/home/data/FolderItem;)Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    move-result-object v1

    .line 268
    .local v1, "targetPageViewGroup":Lcom/sonymobile/home/ui/pageview/PageViewGroup;
    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getCurrentPage()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 269
    new-instance v2, Lcom/sonymobile/home/search/SearchablePageViewPresenter$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/sonymobile/home/search/SearchablePageViewPresenter$1;-><init>(Lcom/sonymobile/home/search/SearchablePageViewPresenter;Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V

    invoke-virtual {v1, v0, v2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->openFolderOnCurrentPage(Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V

    goto :goto_0
.end method

.method private openFolderOnCurrentPage(Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V
    .locals 6
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;
    .param p2, "targetPageViewGroup"    # Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    .prologue
    .line 282
    invoke-virtual {p2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getCurrentPageView()Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    .line 283
    .local v0, "currentPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getUniqueId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/home/ui/pageview/PageView;->getItemView(J)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v2

    .line 285
    .local v2, "folderView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    instance-of v4, v2, Lcom/sonymobile/home/presenter/view/FolderItemView;

    if-eqz v4, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->getPageViewName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/home/folder/FolderOpener;->getOpenFolderNormalMode(Ljava/lang/String;)I

    move-result v1

    .line 287
    .local v1, "folderMode":I
    invoke-virtual {p2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getLocationZ()F

    move-result v3

    .line 288
    .local v3, "zLocation":F
    iget-object v4, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    check-cast v2, Lcom/sonymobile/home/presenter/view/FolderItemView;

    .end local v2    # "folderView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    invoke-virtual {v4, v2, v1, v3}, Lcom/sonymobile/home/folder/FolderOpener;->open(Lcom/sonymobile/home/presenter/view/FolderItemView;IF)V

    .line 291
    .end local v1    # "folderMode":I
    .end local v3    # "zLocation":F
    :cond_0
    return-void
.end method

.method private startJumpAnimation(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "folderInWhichItemIsLocated"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 344
    if-eqz p2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {p2}, Lcom/sonymobile/home/data/FolderItem;->getUniqueId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getPageItem(J)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v0

    .line 347
    .local v0, "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    instance-of v2, v0, Lcom/sonymobile/home/presenter/view/FolderItemView;

    if-eqz v2, :cond_0

    .line 348
    const/16 v1, 0xd

    .line 350
    .local v1, "mode":I
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mFolderOpener:Lcom/sonymobile/home/folder/FolderOpener;

    check-cast v0, Lcom/sonymobile/home/presenter/view/FolderItemView;

    .end local v0    # "itemView":Lcom/sonymobile/home/ui/pageview/PageItemView;
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {v4}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getLocationZ()F

    move-result v4

    invoke-virtual {v2, v0, v3, p1, v4}, Lcom/sonymobile/home/folder/FolderOpener;->openAndLocate(Lcom/sonymobile/home/presenter/view/FolderItemView;ILcom/sonymobile/home/data/Item;F)V

    .line 356
    .end local v1    # "mode":I
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {v2, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->startJumpAnimation(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0
.end method


# virtual methods
.method public getFolderInWhichItemIsLocatedFromIntent(Landroid/content/Intent;)Lcom/sonymobile/home/data/FolderItem;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v3, -0x80000000

    .line 301
    const-string v2, "com.sonymobile.home.search.intent.extra.SEARCH_SUGGESTION_UNIQUE_ID"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 303
    .local v1, "searchSuggestionId":I
    const/4 v0, 0x0

    .line 305
    .local v0, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    if-eq v1, v3, :cond_0

    .line 306
    invoke-static {v1}, Lcom/sonymobile/home/search/SearchAdapterHelper;->getFolderInWhichItemIsLocated(I)Lcom/sonymobile/home/data/FolderItem;

    move-result-object v0

    .line 309
    :cond_0
    return-object v0
.end method

.method protected getPageViewGroupToOpenFolderOn(Lcom/sonymobile/home/data/FolderItem;)Lcom/sonymobile/home/ui/pageview/PageViewGroup;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    return-object v0
.end method

.method protected handleFailedSearch(Z)V
    .locals 0
    .param p1, "isCancelled"    # Z

    .prologue
    .line 382
    return-void
.end method

.method protected handleItemViewClickInNormalMode(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;)Z
    .locals 3
    .param p1, "clickedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "clickedItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "launched":Z
    instance-of v1, p2, Lcom/sonymobile/home/data/InternalFunctionItem;

    if-eqz v1, :cond_1

    .line 150
    const-string v1, "search"

    check-cast p2, Lcom/sonymobile/home/data/InternalFunctionItem;

    .end local p2    # "clickedItem":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p2}, Lcom/sonymobile/home/data/InternalFunctionItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->startSearchActivity()V

    .line 152
    const/4 v0, 0x1

    .line 153
    const-string v1, "SearchButtonDesktop"

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->trackSearchStarted(Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 156
    .restart local p2    # "clickedItem":Lcom/sonymobile/home/data/Item;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sonymobile/home/presenter/PageViewPresenter;->handleItemViewClickInNormalMode(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    goto :goto_0
.end method

.method protected locateSearchItem(Lcom/sonymobile/home/data/Item;Landroid/content/Intent;)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 394
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 186
    invoke-direct {p0, p2, p3}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->handleSearchResult(ILandroid/content/Intent;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 448
    invoke-static {}, Lcom/sonymobile/home/search/SearchAdapterHelper;->clearModel()V

    .line 449
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mSearchableModelsWrapper:Lcom/sonymobile/home/search/SearchableModelsWrapper;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchableModelsWrapper;->onDestroy()V

    .line 451
    invoke-super {p0}, Lcom/sonymobile/home/presenter/PageViewPresenter;->onDestroy()V

    .line 452
    return-void
.end method

.method protected prepareForSearchActivityLaunch()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method protected prepareForSearchLaunch()V
    .locals 2

    .prologue
    .line 362
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v1}, Lcom/sonymobile/flix/components/Scene;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 363
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mSearchableModelsWrapper:Lcom/sonymobile/home/search/SearchableModelsWrapper;

    invoke-virtual {v1}, Lcom/sonymobile/home/search/SearchableModelsWrapper;->getModels()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/home/search/SearchAdapterHelper;->storeModels(Landroid/content/res/Resources;Ljava/util/Map;)V

    .line 364
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mSearchSuggestionsModel:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->removeNonSearchableShortcutItems()V

    .line 365
    return-void
.end method

.method public startJumpAnimation(ILcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V
    .locals 2
    .param p1, "pageToLocate"    # I
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "folderInWhichItemIsLocated"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->getCurrentPage()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    new-instance v1, Lcom/sonymobile/home/search/SearchablePageViewPresenter$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/sonymobile/home/search/SearchablePageViewPresenter$2;-><init>(Lcom/sonymobile/home/search/SearchablePageViewPresenter;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->startJumpAnimation(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V

    goto :goto_0
.end method

.method protected startSearchActivity()V
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->prepareForSearchLaunch()V

    .line 175
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 178
    .local v0, "animationBundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;->getSharedListener()Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;->setActiveCallback(Lcom/sonymobile/home/presenter/PageViewPresenter;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->launchSearch(Landroid/os/Bundle;)V

    .line 180
    return-void
.end method

.method protected trackSearchItemLaunched(Lcom/sonymobile/home/data/Item;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 412
    if-eqz p1, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->getSearchTrackingCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemLaunched"

    invoke-static {p1}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 422
    :cond_0
    return-void
.end method

.method protected trackSearchItemLocated(Lcom/sonymobile/home/data/Item;)V
    .locals 6
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 430
    if-eqz p1, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->getSearchTrackingCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemLocated"

    invoke-static {p1}, Lcom/sonymobile/home/statistics/TrackingUtil;->getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 436
    :cond_0
    return-void
.end method

.method protected trackSearchStarted(Ljava/lang/String;)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->getSearchTrackingCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchClicked"

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, p1, v2, v3}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 404
    return-void
.end method
