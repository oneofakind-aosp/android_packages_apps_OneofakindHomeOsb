.class Lcom/sonymobile/home/folder/FolderManager$7;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Lcom/sonymobile/home/model/RemoveSyncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/FolderManager;->syncFolderItems(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/FolderManager;

.field final synthetic val$folder:Lcom/sonymobile/home/data/FolderItem;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderManager$7;->this$0:Lcom/sonymobile/home/folder/FolderManager;

    iput-object p2, p0, Lcom/sonymobile/home/folder/FolderManager$7;->val$folder:Lcom/sonymobile/home/data/FolderItem;

    iput-object p3, p0, Lcom/sonymobile/home/folder/FolderManager$7;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDuringSync(Lcom/sonymobile/home/data/Item;)Z
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 642
    const-string v0, "com.android.stk"

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "apptray"

    iget-object v1, p0, Lcom/sonymobile/home/folder/FolderManager$7;->val$folder:Lcom/sonymobile/home/data/FolderItem;

    invoke-virtual {v1}, Lcom/sonymobile/home/data/FolderItem;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    const/4 v0, 0x0

    .line 648
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderManager$7;->val$items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
