.class Lcom/sonymobile/home/search/suggest/SuggestionCache$4;
.super Landroid/os/AsyncTask;
.source "SuggestionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/SuggestionCache;->deleteStaleEntries(Ljava/util/ArrayList;)V
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

.field final synthetic val$suggestions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$4;->this$0:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    iput-object p2, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$4;->val$suggestions:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 318
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$4;->this$0:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$4;->val$suggestions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$4;->this$0:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    # getter for: Lcom/sonymobile/home/search/suggest/SuggestionCache;->mRootPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->access$400(Lcom/sonymobile/home/search/suggest/SuggestionCache;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sonymobile/home/search/suggest/SuggestionCache;->doDelete(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->access$500(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    return-object v0
.end method
