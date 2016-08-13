.class Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;
.super Ljava/lang/Object;
.source "OnlineSuggestions.java"

# interfaces
.implements Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->loadSuggestions(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$personalize:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    iput-object p2, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;->val$personalize:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionRequestCompleted(Ljava/util/List;)V
    .locals 3
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
    .line 202
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    # invokes: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->getMinimumCount()I
    invoke-static {v1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$300(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    # invokes: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->addRecommendationEntries(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$400(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Ljava/util/List;)V

    .line 212
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->isConnectedToNetwork(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$500(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;->val$personalize:Z

    # invokes: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->prepareServerRequest(Landroid/content/Context;Z)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$600(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;Z)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    # invokes: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->showNoNetworkMessage()V
    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$700(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;)V

    .line 210
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$2;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    # getter for: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->mSuggestionsListener:Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;
    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$800(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;)Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestionsStatusCallback;->onOnlineSuggestionsLoaded()V

    goto :goto_0
.end method
