.class Lcom/sonymobile/home/model/ListModel$1;
.super Ljava/lang/Object;
.source "ListModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/RemoveSyncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/model/ListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ListModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ListModel;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonymobile/home/model/ListModel$1;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDuringSync(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 45
    const-string v0, "com.android.stk"

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/model/ListModel$1;->this$0:Lcom/sonymobile/home/model/ListModel;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/ListModel;->removeItem(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
