.class public Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;
.super Lcom/sonymobile/home/search/entry/SuggestionEntry;
.source "PromotedSuggestionEntry.java"


# instance fields
.field private final mCallToAction:Ljava/lang/String;

.field private final mFacebookNativeAd:Lcom/facebook/ads/NativeAd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeAd;)V
    .locals 3
    .param p1, "facebookNativeAd"    # Lcom/facebook/ads/NativeAd;

    .prologue
    .line 21
    sget-object v0, Lcom/sonymobile/home/search/entry/SearchEntry$Type;->PROMOTED_SEARCH_RESULT:Lcom/sonymobile/home/search/entry/SearchEntry$Type;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/home/search/entry/SuggestionEntry;-><init>(Lcom/sonymobile/home/search/entry/SearchEntry$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;->mCallToAction:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;->mFacebookNativeAd:Lcom/facebook/ads/NativeAd;

    .line 25
    return-void
.end method


# virtual methods
.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;->mCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeAd()Lcom/facebook/ads/NativeAd;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;->mFacebookNativeAd:Lcom/facebook/ads/NativeAd;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;->mFacebookNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
