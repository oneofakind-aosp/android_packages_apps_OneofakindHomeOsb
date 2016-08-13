.class Lcom/sonymobile/home/search/suggest/SuggestionCache$1;
.super Landroid/os/AsyncTask;
.source "SuggestionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/SuggestionCache;->store(Ljava/util/List;)V
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

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$suggestionsCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$1;->this$0:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    iput-object p2, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$1;->val$suggestionsCopy:Ljava/util/List;

    iput-object p3, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 123
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$1;->this$0:Lcom/sonymobile/home/search/suggest/SuggestionCache;

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$1;->val$suggestionsCopy:Ljava/util/List;

    iget-object v2, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache$1;->val$filePath:Ljava/lang/String;

    # invokes: Lcom/sonymobile/home/search/suggest/SuggestionCache;->writeSuggestions(Ljava/util/List;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->access$000(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/util/List;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method
