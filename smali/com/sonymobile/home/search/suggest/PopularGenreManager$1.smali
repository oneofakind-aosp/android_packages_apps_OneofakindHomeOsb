.class Lcom/sonymobile/home/search/suggest/PopularGenreManager$1;
.super Landroid/os/AsyncTask;
.source "PopularGenreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/PopularGenreManager;->update(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/sonymobile/home/search/suggest/PopularGenreManager;

.field final synthetic val$genre:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/PopularGenreManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/PopularGenreManager$1;->this$0:Lcom/sonymobile/home/search/suggest/PopularGenreManager;

    iput-object p2, p0, Lcom/sonymobile/home/search/suggest/PopularGenreManager$1;->val$genre:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/suggest/PopularGenreManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/PopularGenreManager$1;->this$0:Lcom/sonymobile/home/search/suggest/PopularGenreManager;

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/PopularGenreManager$1;->val$genre:Ljava/lang/String;

    # invokes: Lcom/sonymobile/home/search/suggest/PopularGenreManager;->writeToStorage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/search/suggest/PopularGenreManager;->access$000(Lcom/sonymobile/home/search/suggest/PopularGenreManager;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method
