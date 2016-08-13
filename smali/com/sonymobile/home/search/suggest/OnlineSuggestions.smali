.class public Lcom/sonymobile/home/search/suggest/OnlineSuggestions;
.super Ljava/lang/Object;
.source "OnlineSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/search/suggest/OnlineSuggestions$PermissionRequestCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCache:Lcom/sonymobile/home/search/suggest/SuggestionCache;

.field private final mMaxRecommendationCount:I

.field private final mNotifyContainerChanged:Lcom/sonymobile/home/search/NotifyContainerChanged;

.field private mPromotedSuggestionEntry:Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

.field private mRecommendationsHeader:Lcom/sonymobile/home/search/entry/HeadingEntry;

.field private final mRequester:Lcom/sonymobile/home/search/suggest/Requester;

.field private final mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

.field private final mSuggestionsListener:Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

.field private final mViewBinderFactory:Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;Lcom/sonymobile/home/search/SearchEntryContainer;Lcom/sonymobile/home/search/NotifyContainerChanged;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binderFactory"    # Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;
    .param p3, "entryContainer"    # Lcom/sonymobile/home/search/SearchEntryContainer;
    .param p4, "notifyContainerChanged"    # Lcom/sonymobile/home/search/NotifyContainerChanged;
    .param p5, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;
    .param p6, "listener"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;

    invoke-direct {v0}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mRequester:Lcom/sonymobile/home/search/suggest/Requester;

    .line 84
    iput-object p2, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mViewBinderFactory:Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;

    .line 85
    iput-object p3, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    .line 87
    iput-object p4, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mNotifyContainerChanged:Lcom/sonymobile/home/search/NotifyContainerChanged;

    .line 88
    iput-object p5, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 89
    invoke-static {p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->getInstance(Landroid/content/Context;)Lcom/sonymobile/home/search/suggest/SuggestionCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mCache:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    .line 90
    iput-object p6, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionsListener:Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mMaxRecommendationCount:I

    .line 94
    invoke-virtual {p5}, Lcom/sonymobile/home/settings/UserSettings;->shouldPersonalizeRecommendations()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->createPromotionAndLoadSuggestions(Landroid/content/Context;Z)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;)Lcom/sonymobile/home/settings/UserSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;)Lcom/sonymobile/home/search/suggest/SuggestionCache;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mCache:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;)Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestions;
    .param p1, "x1"    # Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mPromotedSuggestionEntry:Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestions;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->createPromotionAndLoadSuggestions(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestions;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->loadSuggestions(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->getMinimumCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestions;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->addRecommendationEntries(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestions;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestions;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->prepareServerRequest(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->showNoNetworkMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;)Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionsListener:Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/OnlineSuggestions;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->performServerRequest(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private addRecommendationEntries(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "searchHits":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    iget-object v6, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionsListener:Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;

    invoke-interface {v6}, Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;->onOnlineSuggestionsLoaded()V

    .line 170
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mPromotedSuggestionEntry:Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

    if-eqz v6, :cond_4

    .line 171
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v6}, Lcom/sonymobile/home/search/SearchEntryContainer;->getCount()I

    move-result v1

    .line 172
    .local v1, "countBefore":I
    iget-object v6, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mPromotedSuggestionEntry:Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

    if-eqz v6, :cond_2

    .line 173
    iget-object v6, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    iget-object v7, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mPromotedSuggestionEntry:Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

    invoke-virtual {v6, v7}, Lcom/sonymobile/home/search/SearchEntryContainer;->add(Lcom/sonymobile/home/search/entry/SearchEntry;)V

    .line 174
    iget-object v6, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mPromotedSuggestionEntry:Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

    invoke-virtual {v6}, Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "promotionLabel":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    .line 177
    .local v2, "entry":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    invoke-virtual {v2}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 178
    iget-object v6, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v6, v2}, Lcom/sonymobile/home/search/SearchEntryContainer;->add(Lcom/sonymobile/home/search/entry/SearchEntry;)V

    goto :goto_0

    .line 182
    .end local v2    # "entry":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "promotionLabel":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v6, p1}, Lcom/sonymobile/home/search/SearchEntryContainer;->addAll(Ljava/util/List;)V

    .line 184
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v6}, Lcom/sonymobile/home/search/SearchEntryContainer;->getCount()I

    move-result v0

    .line 185
    .local v0, "countAfter":I
    sub-int v5, v0, v1

    .line 186
    .local v5, "totalCount":I
    iget-object v6, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mNotifyContainerChanged:Lcom/sonymobile/home/search/NotifyContainerChanged;

    invoke-interface {v6, v1, v5}, Lcom/sonymobile/home/search/NotifyContainerChanged;->itemRangeInserted(II)V

    .line 190
    .end local v0    # "countAfter":I
    .end local v1    # "countBefore":I
    .end local v5    # "totalCount":I
    :goto_1
    return-void

    .line 188
    :cond_4
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->showNoNetworkMessage()V

    goto :goto_1
.end method

.method private addRecommendationsHeader(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 105
    iget-object v2, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    sget-object v3, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ONLINE_HEADING:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/search/SearchEntryContainer;->contains(Lcom/sonymobile/home/search/entry/SearchEntry$Type;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    const v2, 0x7f0800c0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/home/search/entry/HeadingEntry;

    sget-object v3, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ONLINE_HEADING:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    const v4, 0x7f08010e

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/sonymobile/home/search/entry/HeadingEntry;-><init>(Lcom/sonymobile/home/search/entry/SearchEntry$Type;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mRecommendationsHeader:Lcom/sonymobile/home/search/entry/HeadingEntry;

    .line 111
    iget-object v2, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v2}, Lcom/sonymobile/home/search/SearchEntryContainer;->getCount()I

    move-result v0

    .line 113
    .local v0, "size":I
    iget-object v2, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mRecommendationsHeader:Lcom/sonymobile/home/search/entry/HeadingEntry;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/search/SearchEntryContainer;->add(Lcom/sonymobile/home/search/entry/SearchEntry;)V

    .line 114
    iget-object v2, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mNotifyContainerChanged:Lcom/sonymobile/home/search/NotifyContainerChanged;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/sonymobile/home/search/NotifyContainerChanged;->itemRangeInserted(II)V

    .line 118
    .end local v0    # "size":I
    .end local v1    # "title":Ljava/lang/String;
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mRecommendationsHeader:Lcom/sonymobile/home/search/entry/HeadingEntry;

    invoke-virtual {v2, v5}, Lcom/sonymobile/home/search/entry/HeadingEntry;->showSubtitle(Z)V

    goto :goto_0
.end method

.method private createPromotionAndLoadSuggestions(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "personalize"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->addRecommendationsHeader(Landroid/content/Context;)V

    .line 123
    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionsListener:Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;

    invoke-interface {v1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;->onOnlineSuggestionsLoadStarted()V

    .line 125
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mPromotedSuggestionEntry:Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

    if-nez v1, :cond_0

    .line 126
    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-static {}, Lcom/sonymobile/home/search/suggest/ApiConstants;->getFacebookPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    .local v0, "facebookNativeAd":Lcom/facebook/ads/NativeAd;
    new-instance v1, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$1;-><init>(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 155
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->loadAd()V

    .line 159
    .end local v0    # "facebookNativeAd":Lcom/facebook/ads/NativeAd;
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->loadSuggestions(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private destroyPromotion()V
    .locals 2

    .prologue
    .line 289
    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mPromotedSuggestionEntry:Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mPromotedSuggestionEntry:Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

    invoke-virtual {v1}, Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;->getNativeAd()Lcom/facebook/ads/NativeAd;

    move-result-object v0

    .line 291
    .local v0, "nativeAd":Lcom/facebook/ads/NativeAd;
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 292
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->destroy()V

    .line 294
    .end local v0    # "nativeAd":Lcom/facebook/ads/NativeAd;
    :cond_0
    return-void
.end method

.method public static filterInstalledApps(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 360
    .local v2, "notInstalled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 362
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 364
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    .line 367
    .local v0, "entry":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 371
    .end local v0    # "entry":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    :cond_1
    return-object v2
.end method

.method private getMinimumCount()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mMaxRecommendationCount:I

    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/ApiConstants;->getMinimumRecommendationCount(I)I

    move-result v0

    return v0
.end method

.method private isConnectedToNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 219
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 220
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isInstalled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 383
    const/4 v0, 0x0

    .line 386
    .local v0, "isInstalled":Z
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 390
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 386
    goto :goto_0

    .line 387
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadSuggestions(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "personalize"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mCache:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    new-instance v1, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;-><init>(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->load(Landroid/content/Context;Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;)V

    .line 214
    return-void
.end method

.method private performServerRequest(Landroid/content/Context;ZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "includeLocation"    # Z
    .param p3, "includeGenres"    # Z

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mRequester:Lcom/sonymobile/home/search/suggest/Requester;

    iget v2, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mMaxRecommendationCount:I

    new-instance v5, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$4;

    invoke-direct {v5, p0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$4;-><init>(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/home/search/suggest/Requester;->request(Landroid/content/Context;IZZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;)V

    .line 275
    return-void
.end method

.method private prepareServerRequest(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "personalize"    # Z

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mViewBinderFactory:Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/binding/ViewDataBinderFactory;->cancelIconDownloads()V

    .line 236
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->removeRecommendations()V

    .line 237
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->destroyPromotion()V

    .line 239
    if-eqz p2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionsListener:Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;

    new-instance v1, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$3;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$3;-><init>(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;->onRequestLocation(Lcom/sonymobile/home/search/suggest/OnlineSuggestions$PermissionRequestCallback;)V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-direct {p0, p1, v1, v1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->performServerRequest(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method private removeRecommendations()V
    .locals 7

    .prologue
    .line 312
    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v3}, Lcom/sonymobile/home/search/SearchEntryContainer;->getCount()I

    move-result v1

    .line 314
    .local v1, "countBefore":I
    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    const/4 v5, 0x0

    sget-object v6, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ONLINE_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->PROMOTED_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/search/SearchEntryContainer;->removeTypes([Lcom/sonymobile/home/search/entry/SearchEntry$Type;)V

    .line 316
    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v3}, Lcom/sonymobile/home/search/SearchEntryContainer;->getCount()I

    move-result v0

    .line 317
    .local v0, "countAfter":I
    sub-int v2, v1, v0

    .line 318
    .local v2, "totalCount":I
    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mNotifyContainerChanged:Lcom/sonymobile/home/search/NotifyContainerChanged;

    invoke-interface {v3, v0, v2}, Lcom/sonymobile/home/search/NotifyContainerChanged;->itemRangeRemoved(II)V

    .line 319
    return-void
.end method

.method private showNoNetworkMessage()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mRecommendationsHeader:Lcom/sonymobile/home/search/entry/HeadingEntry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/search/entry/HeadingEntry;->showSubtitle(Z)V

    .line 226
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mNotifyContainerChanged:Lcom/sonymobile/home/search/NotifyContainerChanged;

    invoke-interface {v0}, Lcom/sonymobile/home/search/NotifyContainerChanged;->dataSetChanged()V

    .line 227
    return-void
.end method

.method public static trackOnlineSearchAction(Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 4
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 323
    invoke-virtual {p1}, Lcom/sonymobile/home/settings/UserSettings;->isAutomaticDesktopEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ModernMode_Search"

    .line 327
    .local v0, "category":Ljava/lang/String;
    :goto_0
    const-string v1, ""

    const-wide/16 v2, 0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 328
    return-void

    .line 323
    .end local v0    # "category":Ljava/lang/String;
    :cond_0
    const-string v0, "ClassicMode_Search"

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->destroyPromotion()V

    .line 282
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mRequester:Lcom/sonymobile/home/search/suggest/Requester;

    invoke-interface {v0}, Lcom/sonymobile/home/search/suggest/Requester;->cancel()V

    .line 283
    return-void
.end method

.method public reloadPersonalizedRecommendations(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->removeRecommendations()V

    .line 303
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mCache:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    new-instance v1, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$5;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$5;-><init>(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->clear(Lcom/sonymobile/home/search/suggest/SuggestionCache$SuggestionClearListener;)V

    .line 309
    return-void
.end method

.method public update(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 336
    iget-object v5, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    const-class v6, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    invoke-virtual {v5, v6}, Lcom/sonymobile/home/search/SearchEntryContainer;->get(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 338
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 339
    invoke-static {p1, v1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->filterInstalledApps(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 340
    .local v2, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    move v0, v3

    .line 342
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 343
    iget-object v5, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    new-array v3, v3, [Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    sget-object v6, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ONLINE_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    aput-object v6, v3, v4

    invoke-virtual {v5, v3}, Lcom/sonymobile/home/search/SearchEntryContainer;->removeTypes([Lcom/sonymobile/home/search/entry/SearchEntry$Type;)V

    .line 344
    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionEntries:Lcom/sonymobile/home/search/SearchEntryContainer;

    invoke-virtual {v3, v2}, Lcom/sonymobile/home/search/SearchEntryContainer;->addAll(Ljava/util/List;)V

    .line 345
    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mNotifyContainerChanged:Lcom/sonymobile/home/search/NotifyContainerChanged;

    invoke-interface {v3}, Lcom/sonymobile/home/search/NotifyContainerChanged;->dataSetChanged()V

    .line 348
    .end local v0    # "changed":Z
    .end local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    :cond_0
    return-void

    .restart local v2    # "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    :cond_1
    move v0, v4

    .line 340
    goto :goto_0
.end method
