.class Lcom/sonymobile/home/desktop/AutomaticDesktopModel$1;
.super Ljava/lang/Object;
.source "AutomaticDesktopModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/AddSyncableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/AutomaticDesktopModel;-><init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

.field final synthetic val$folderManager:Lcom/sonymobile/home/folder/FolderManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;Lcom/sonymobile/home/folder/FolderManager;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$1;->this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$1;->val$folderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/sonymobile/home/data/Item;)Z
    .locals 6
    .param p1, "itemToAdd"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 86
    iget-object v4, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$1;->this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    iget-object v4, v4, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->hasAutomaticDesktopModeBeenUsed(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 94
    const/4 v2, 0x0

    .line 111
    :cond_0
    :goto_0
    return v2

    .line 97
    :cond_1
    const/4 v2, 0x0

    .line 98
    .local v2, "itemAdded":Z
    const/4 v0, 0x0

    .line 100
    .local v0, "existsInStage":Z
    iget-object v4, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$1;->this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mCallbackForStageItems:Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->access$000(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;)Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    .line 101
    .local v3, "stageItem":Lcom/sonymobile/home/data/Item;
    instance-of v4, v3, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$1;->val$folderManager:Lcom/sonymobile/home/folder/FolderManager;

    move-object v4, v3

    check-cast v4, Lcom/sonymobile/home/data/FolderItem;

    invoke-virtual {v5, v4, p1}, Lcom/sonymobile/home/folder/FolderManager;->folderContainsItem(Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/data/Item;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    :cond_4
    const/4 v0, 0x1

    .line 108
    .end local v3    # "stageItem":Lcom/sonymobile/home/data/Item;
    :cond_5
    if-nez v0, :cond_0

    .line 109
    iget-object v4, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$1;->this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    # invokes: Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->addItemOnLastPage(Lcom/sonymobile/home/data/Item;)Z
    invoke-static {v4, p1}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->access$100(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    goto :goto_0
.end method
