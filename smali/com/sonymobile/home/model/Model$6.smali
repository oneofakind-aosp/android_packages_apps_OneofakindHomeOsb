.class Lcom/sonymobile/home/model/Model$6;
.super Landroid/os/AsyncTask;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/Model;->updateStorage(Lcom/sonymobile/home/data/Item;)V
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
.field final synthetic this$0:Lcom/sonymobile/home/model/Model;

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/Model;Lcom/sonymobile/home/data/Item;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/sonymobile/home/model/Model$6;->this$0:Lcom/sonymobile/home/model/Model;

    iput-object p2, p0, Lcom/sonymobile/home/model/Model$6;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 906
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/Model$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 910
    iget-object v0, p0, Lcom/sonymobile/home/model/Model$6;->this$0:Lcom/sonymobile/home/model/Model;

    iget-object v0, v0, Lcom/sonymobile/home/model/Model;->mStorage:Lcom/sonymobile/home/storage/Storage;

    iget-object v1, p0, Lcom/sonymobile/home/model/Model$6;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-interface {v0, v1}, Lcom/sonymobile/home/storage/Storage;->updateItem(Lcom/sonymobile/home/data/Item;)I

    .line 911
    const/4 v0, 0x0

    return-object v0
.end method
