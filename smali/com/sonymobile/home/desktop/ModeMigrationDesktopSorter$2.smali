.class Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;
.super Ljava/lang/Object;
.source "ModeMigrationDesktopSorter.java"

# interfaces
.implements Lcom/sonymobile/home/data/ItemCreator$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->createUnusedFolder(Lcom/sonymobile/home/desktop/DesktopModel;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;

.field final synthetic val$model:Lcom/sonymobile/home/desktop/DesktopModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;->this$0:Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;->val$model:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "errorTextResourceId"    # I

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    # getter for: Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->access$200()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;->this$0:Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;

    # getter for: Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->access$300(Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;->val$model:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopModel;->updateModel()V

    .line 217
    return-void
.end method

.method public onResult(Lcom/sonymobile/home/data/Item;)V
    .locals 9
    .param p1, "newItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 192
    move-object v7, p1

    check-cast v7, Lcom/sonymobile/home/data/FolderItem;

    .line 194
    .local v7, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    iget-object v1, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;->this$0:Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;

    # getter for: Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->access$100(Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;)Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0800a0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sonymobile/home/data/FolderItem;->setName(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;->val$model:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sonymobile/home/data/FolderItem;->setPageViewName(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;->val$model:Lcom/sonymobile/home/desktop/DesktopModel;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;->val$model:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/DesktopModel;->getRightPageId()I

    move-result v3

    invoke-virtual {v1, v7, v4, v4, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->addItemAtLastVacantLocation(Lcom/sonymobile/home/data/Item;III)Z

    move-result v6

    .line 198
    .local v6, "added":Z
    if-nez v6, :cond_0

    .line 200
    iget-object v1, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;->val$model:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->appendPage()I

    move-result v8

    .line 201
    .local v8, "pageId":I
    const v1, 0x7fffffff

    if-eq v8, v1, :cond_1

    .line 202
    new-instance v0, Lcom/sonymobile/home/data/ItemLocation;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;->val$model:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopModel;->getRightPageId()I

    move-result v1

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/data/ItemLocation;-><init>(IIIII)V

    .line 203
    .local v0, "location":Lcom/sonymobile/home/data/ItemLocation;
    invoke-virtual {v7, v0}, Lcom/sonymobile/home/data/FolderItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 204
    iget-object v1, p0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter$2;->val$model:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v1, v7}, Lcom/sonymobile/home/desktop/DesktopModel;->addItemToDesktop(Lcom/sonymobile/home/data/Item;)Z

    .line 209
    .end local v0    # "location":Lcom/sonymobile/home/data/ItemLocation;
    .end local v8    # "pageId":I
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v8    # "pageId":I
    :cond_1
    # getter for: Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not add desktop folder, maximum number of pages reached"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
