.class Lcom/sonymobile/home/search/suggest/SuggestionCache$5;
.super Landroid/os/AsyncTask;
.source "SuggestionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/SuggestionCache;->clear(Lcom/sonymobile/home/search/suggest/SuggestionCache$SuggestionClearListener;)V
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
.field final synthetic this$0:Lcom/sonymobile/home/search/suggest/SuggestionCache;

.field final synthetic val$listener:Lcom/sonymobile/home/search/suggest/SuggestionCache$SuggestionClearListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/SuggestionCache;Lcom/sonymobile/home/search/suggest/SuggestionCache$SuggestionClearListener;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$5;->this$0:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    iput-object p2, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$5;->val$listener:Lcom/sonymobile/home/search/suggest/SuggestionCache$SuggestionClearListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 385
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$5;->this$0:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    # invokes: Lcom/sonymobile/home/search/suggest/SuggestionCache;->deleteSuggestionData()V
    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->access$600(Lcom/sonymobile/home/search/suggest/SuggestionCache;)V

    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 385
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$5;->val$listener:Lcom/sonymobile/home/search/suggest/SuggestionCache$SuggestionClearListener;

    invoke-interface {v0}, Lcom/sonymobile/home/search/suggest/SuggestionCache$SuggestionClearListener;->onCacheCleared()V

    .line 395
    return-void
.end method
