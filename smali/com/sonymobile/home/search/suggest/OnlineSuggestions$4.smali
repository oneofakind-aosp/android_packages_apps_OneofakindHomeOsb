.class Lcom/sonymobile/home/search/suggest/OnlineSuggestions$4;
.super Ljava/lang/Object;
.source "OnlineSuggestions.java"

# interfaces
.implements Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->performServerRequest(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$4;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionRequestCompleted(Ljava/util/List;)V
    .locals 1
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
    .line 267
    .local p1, "searchHits":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$4;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    # getter for: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mCache:Lcom/sonymobile/home/search/suggest/SuggestionCache;
    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$1000(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;)Lcom/sonymobile/home/search/suggest/SuggestionCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->store(Ljava/util/List;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$4;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    # invokes: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->addRecommendationEntries(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$400(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Ljava/util/List;)V

    .line 273
    return-void
.end method
