.class Lcom/sonymobile/home/folder/FolderManager$8;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Lcom/sonymobile/home/model/RemoveSyncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/FolderManager;->syncFolderItemsPackageChanged(JLjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/FolderManager;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/FolderManager;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderManager$8;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    iput-object p2, p0, Lcom/sonymobile/home/folder/FolderManager$8;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDuringSync(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 679
    const-string v0, "com.android.stk"

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const/4 v0, 0x0

    .line 688
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderManager$8;->val$items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
