.class public Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;
.super Lcom/sonymobile/home/search/binding/SearchViewDataBinder;
.source "SuggestionEntryViewDataBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final RATING_STARS:[I


# instance fields
.field private final mCallToAction:Landroid/widget/TextView;

.field private final mDownloader:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

.field private mGenre:Ljava/lang/String;

.field private final mGenreView:Landroid/widget/TextView;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

.field private mPackageName:Ljava/lang/String;

.field private final mRatingStars:[Landroid/widget/ImageView;

.field private mRegisteredAdView:Landroid/view/View;

.field private final mTitle:Landroid/widget/TextView;

.field private final mUserSettings:Lcom/sonymobile/home/settings/UserSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->RATING_STARS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0f00c1
        0x7f0f00c2
        0x7f0f00c3
        0x7f0f00c4
        0x7f0f00c5
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;
    .param p3, "downloader"    # Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;
    .param p4, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/binding/SearchViewDataBinder;-><init>(Landroid/view/View;)V

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mRegisteredAdView:Landroid/view/View;

    .line 64
    const v1, 0x7f0f00bf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mTitle:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0f00be

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mIcon:Landroid/widget/ImageView;

    .line 66
    sget-object v1, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->RATING_STARS:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mRatingStars:[Landroid/widget/ImageView;

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->RATING_STARS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v2, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mRatingStars:[Landroid/widget/ImageView;

    sget-object v1, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->RATING_STARS:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iput-object p2, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    .line 72
    const v1, 0x7f0f00c6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mGenreView:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f0f00c0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mCallToAction:Landroid/widget/TextView;

    .line 74
    iput-object p3, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mDownloader:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    .line 75
    iput-object p4, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    .line 76
    return-void
.end method

.method private bindPromotedEntry(Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;D)D
    .locals 6
    .param p1, "entry"    # Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;
    .param p2, "inputRating"    # D

    .prologue
    .line 122
    move-wide v2, p2

    .line 124
    .local v2, "rating":D
    iget-object v4, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mGenreView:Landroid/widget/TextView;

    const v5, 0x7f0800c6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v4, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;->getNativeAd()Lcom/facebook/ads/NativeAd;

    move-result-object v1

    .line 129
    .local v1, "nativeAd":Lcom/facebook/ads/NativeAd;
    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v0

    .line 130
    .local v0, "adStarRating":Lcom/facebook/ads/NativeAd$Rating;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Rating;->getValue()D

    move-result-wide v2

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->itemView:Landroid/view/View;

    iget-object v5, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mRegisteredAdView:Landroid/view/View;

    if-eq v4, v5, :cond_1

    .line 135
    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 136
    iget-object v4, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;)V

    .line 137
    iget-object v4, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->itemView:Landroid/view/View;

    iput-object v4, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mRegisteredAdView:Landroid/view/View;

    .line 139
    :cond_1
    return-wide v2
.end method

.method private updateStars(D)V
    .locals 7
    .param p1, "rating"    # D

    .prologue
    const/4 v3, 0x0

    .line 148
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v4

    if-lez v4, :cond_2

    .line 149
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    .line 151
    .local v1, "starRating":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->RATING_STARS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 152
    if-le v1, v0, :cond_0

    const/4 v2, 0x1

    .line 153
    .local v2, "visible":Z
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mRatingStars:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v2, :cond_1

    move v4, v3

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "visible":Z
    :cond_0
    move v2, v3

    .line 152
    goto :goto_1

    .line 153
    .restart local v2    # "visible":Z
    :cond_1
    const/16 v4, 0x8

    goto :goto_2

    .line 156
    .end local v0    # "i":I
    .end local v1    # "starRating":I
    .end local v2    # "visible":Z
    :cond_2
    return-void
.end method


# virtual methods
.method public bind(Lcom/sonymobile/home/search/entry/SearchEntry;)V
    .locals 7
    .param p1, "searchEntry"    # Lcom/sonymobile/home/search/entry/SearchEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 93
    const-class v3, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    invoke-virtual {p0, p1, v3}, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->checkSearchEntryTypeAndThrow(Lcom/sonymobile/home/search/entry/SearchEntry;Ljava/lang/Class;)V

    move-object v0, p1

    .line 94
    check-cast v0, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    .line 95
    .local v0, "entry":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "label":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const-wide/16 v4, 0x0

    .line 100
    .local v4, "rating":D
    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getGenre()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mGenre:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/sonymobile/home/search/entry/SearchEntry;->getType()Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    move-result-object v3

    sget-object v6, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->ONLINE_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    if-ne v3, v6, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getRating()D

    move-result-wide v4

    .line 104
    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mGenreView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mGenre:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->itemView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_0
    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->updateStars(D)V

    .line 113
    invoke-virtual {v0}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mPackageName:Ljava/lang/String;

    .line 115
    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mDownloader:Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;

    invoke-virtual {v3, v0}, Lcom/sonymobile/home/search/SelfUpdatingIconBitmapCache;->getIconBitmap(Lcom/sonymobile/home/search/entry/SuggestionEntry;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 116
    .local v1, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->setIcon(Landroid/graphics/Bitmap;)V

    .line 117
    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    return-void

    .line 106
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    instance-of v3, v0, Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->itemView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v3, v0

    .line 108
    check-cast v3, Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

    invoke-direct {p0, v3, v4, v5}, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->bindPromotedEntry(Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;D)D

    move-result-wide v4

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    const-string v1, "SearchRecommendedClicked"

    iget-object v2, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;

    invoke-static {v1, v2}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->trackOnlineSearchAction(Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 86
    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->formatQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "query":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mListener:Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;

    iget-object v2, p0, Lcom/sonymobile/home/search/suggest/SuggestionEntryViewDataBinder;->mGenre:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/sonymobile/home/search/SearchAdapter$SearchSuggestionEventListener;->onSuggestionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    return-void
.end method
