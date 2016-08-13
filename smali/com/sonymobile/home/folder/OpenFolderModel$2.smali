.class Lcom/sonymobile/home/folder/OpenFolderModel$2;
.super Ljava/lang/Object;
.source "OpenFolderModel.java"

# interfaces
.implements Lcom/sonymobile/home/folder/FolderManager$FolderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/OpenFolderModel;->createFolderChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/OpenFolderModel;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderModel$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageViewName"    # Ljava/lang/String;

    .prologue
    .line 142
    return-void
.end method

.method public onFolderChanged(J)V
    .locals 5
    .param p1, "folderId"    # J

    .prologue
    .line 127
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderModel;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderModel;->mClosedFolderItem:Lcom/sonymobile/home/data/FolderItem;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderModel;->access$100(Lcom/sonymobile/home/folder/OpenFolderModel;)Lcom/sonymobile/home/data/FolderItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/data/FolderItem;->getUniqueId()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderModel;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderModel;->access$200(Lcom/sonymobile/home/folder/OpenFolderModel;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/folder/OpenFolderModel$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderModel;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderModel;->mClosedFolderItem:Lcom/sonymobile/home/data/FolderItem;
    invoke-static {v2}, Lcom/sonymobile/home/folder/OpenFolderModel;->access$100(Lcom/sonymobile/home/folder/OpenFolderModel;)Lcom/sonymobile/home/data/FolderItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/folder/FolderManager;->getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderModel;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderModel;->mItems:Ljava/util/List;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderModel;->access$300(Lcom/sonymobile/home/folder/OpenFolderModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 133
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderModel;

    # getter for: Lcom/sonymobile/home/folder/OpenFolderModel;->mItems:Ljava/util/List;
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderModel;->access$400(Lcom/sonymobile/home/folder/OpenFolderModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    iget-object v1, p0, Lcom/sonymobile/home/folder/OpenFolderModel$2;->this$0:Lcom/sonymobile/home/folder/OpenFolderModel;

    # invokes: Lcom/sonymobile/home/folder/OpenFolderModel;->notifyOnModelChanged()V
    invoke-static {v1}, Lcom/sonymobile/home/folder/OpenFolderModel;->access$500(Lcom/sonymobile/home/folder/OpenFolderModel;)V

    .line 137
    .end local v0    # "folderItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_0
    return-void
.end method

.method public onFolderNameChanged(JLjava/lang/String;)V
    .locals 0
    .param p1, "folderId"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    return-void
.end method
