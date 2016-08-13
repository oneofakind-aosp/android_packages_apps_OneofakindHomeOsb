.class Lcom/sonymobile/home/search/suggest/OnlineSuggestions$1;
.super Ljava/lang/Object;
.source "OnlineSuggestions.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->createPromotionAndLoadSuggestions(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$1;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    iput-object p2, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 151
    const-string v0, "SearchPromotionClicked"

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$1;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    # getter for: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;
    invoke-static {v1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$000(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;)Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->trackOnlineSearchAction(Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 152
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 3
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 132
    const-string v0, "SearchPromotionLoaded"

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$1;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    # getter for: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mUserSettings:Lcom/sonymobile/home/settings/UserSettings;
    invoke-static {v1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$000(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;)Lcom/sonymobile/home/settings/UserSettings;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->trackOnlineSearchAction(Ljava/lang/String;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 134
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$1;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    new-instance v1, Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

    check-cast p1, Lcom/facebook/ads/NativeAd;

    .end local p1    # "ad":Lcom/facebook/ads/Ad;
    invoke-direct {v1, p1}, Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;-><init>(Lcom/facebook/ads/NativeAd;)V

    # setter for: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mPromotedSuggestionEntry:Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;
    invoke-static {v0, v1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$102(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;)Lcom/sonymobile/home/search/entry/PromotedSuggestionEntry;

    .line 135
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$1;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    # invokes: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->loadSuggestions(Landroid/content/Context;Z)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$200(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;Z)V

    .line 136
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "error"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$1;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    # invokes: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->loadSuggestions(Landroid/content/Context;Z)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$200(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;Z)V

    .line 144
    return-void
.end method
