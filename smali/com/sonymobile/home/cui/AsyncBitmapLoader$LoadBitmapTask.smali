.class Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "AsyncBitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/cui/AsyncBitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/sonymobile/home/cui/BitmapLoaderItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/home/cui/AsyncBitmapLoader;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/cui/AsyncBitmapLoader;Ljava/lang/Object;Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>.LoadBitmapTask;"
    .local p2, "key":Ljava/lang/Object;, "TT;"
    .local p3, "listener":Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener<TT;>;"
    iput-object p1, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->this$0:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->mKey:Ljava/lang/Object;

    .line 44
    iput-object p3, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->mListener:Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;

    .line 45
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/sonymobile/home/cui/BitmapLoaderItem;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 53
    .local p0, "this":Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>.LoadBitmapTask;"
    invoke-virtual {p0}, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->this$0:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    iget-object v1, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->loadBitmaps(Ljava/lang/Object;)Lcom/sonymobile/home/cui/BitmapLoaderItem;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>.LoadBitmapTask;"
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->doInBackground([Ljava/lang/String;)Lcom/sonymobile/home/cui/BitmapLoaderItem;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/sonymobile/home/cui/BitmapLoaderItem;)V
    .locals 2
    .param p1, "value"    # Lcom/sonymobile/home/cui/BitmapLoaderItem;

    .prologue
    .line 64
    .local p0, "this":Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>.LoadBitmapTask;"
    iget-object v0, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->this$0:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    # getter for: Lcom/sonymobile/home/cui/AsyncBitmapLoader;->mTasks:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->access$000(Lcom/sonymobile/home/cui/AsyncBitmapLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>.LoadBitmapTask;"
    check-cast p1, Lcom/sonymobile/home/cui/BitmapLoaderItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->onCancelled(Lcom/sonymobile/home/cui/BitmapLoaderItem;)V

    return-void
.end method

.method protected onPostExecute(Lcom/sonymobile/home/cui/BitmapLoaderItem;)V
    .locals 2
    .param p1, "value"    # Lcom/sonymobile/home/cui/BitmapLoaderItem;

    .prologue
    .line 58
    .local p0, "this":Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>.LoadBitmapTask;"
    iget-object v0, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->this$0:Lcom/sonymobile/home/cui/AsyncBitmapLoader;

    # getter for: Lcom/sonymobile/home/cui/AsyncBitmapLoader;->mTasks:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sonymobile/home/cui/AsyncBitmapLoader;->access$000(Lcom/sonymobile/home/cui/AsyncBitmapLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->mListener:Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;

    iget-object v1, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->mKey:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;->onBitmapLoaded(Ljava/lang/Object;Lcom/sonymobile/home/cui/BitmapLoaderItem;)V

    .line 60
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>.LoadBitmapTask;"
    check-cast p1, Lcom/sonymobile/home/cui/BitmapLoaderItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->onPostExecute(Lcom/sonymobile/home/cui/BitmapLoaderItem;)V

    return-void
.end method

.method public setListener(Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader<TT;>.LoadBitmapTask;"
    .local p1, "listener":Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;, "Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener<TT;>;"
    iput-object p1, p0, Lcom/sonymobile/home/cui/AsyncBitmapLoader$LoadBitmapTask;->mListener:Lcom/sonymobile/home/cui/AsyncBitmapLoader$BitmapLoadListener;

    .line 49
    return-void
.end method
