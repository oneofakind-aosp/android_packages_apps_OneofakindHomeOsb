.class Lcom/sonymobile/home/search/suggest/SuggestionCache$2;
.super Landroid/os/AsyncTask;
.source "SuggestionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/SuggestionCache;->load(Landroid/content/Context;Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;)V
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/suggest/SuggestionCache;

.field final synthetic val$callback:Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/lang/String;Landroid/content/Context;Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;->this$0:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    iput-object p2, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;->val$callback:Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;->this$0:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    iget-object v2, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;->val$filePath:Ljava/lang/String;

    # invokes: Lcom/sonymobile/home/search/suggest/SuggestionCache;->loadSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->access$100(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 174
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->filterInstalledApps(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;->val$callback:Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;->onSuggestionRequestCompleted(Ljava/util/List;)V

    .line 180
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;->this$0:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    # invokes: Lcom/sonymobile/home/search/suggest/SuggestionCache;->deleteStaleEntries(Ljava/util/ArrayList;)V
    invoke-static {v0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->access$200(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/util/ArrayList;)V

    .line 181
    return-void
.end method
