.class Lcom/sonymobile/home/desktop/AutomaticDesktopModel$2;
.super Ljava/lang/Object;
.source "AutomaticDesktopModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->activateModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$2;->this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 181
    new-instance v0, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$2;->this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$2;->this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->access$200(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;)Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$2;->this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->access$300(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;)Lcom/sonymobile/home/model/ResourceHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$2;->this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;
    invoke-static {v4}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->access$400(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;)Lcom/sonymobile/home/folder/FolderManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$2;->this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mItemCreator:Lcom/sonymobile/home/data/ItemCreator;
    invoke-static {v5}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->access$500(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;)Lcom/sonymobile/home/data/ItemCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$2;->this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->mCallbackForStageItems:Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;
    invoke-static {v6}, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;->access$000(Lcom/sonymobile/home/desktop/AutomaticDesktopModel;)Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;-><init>(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/desktop/AutomaticDesktopModel$CallbackForStageItems;)V

    .line 184
    .local v0, "modelSorter":Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;
    iget-object v1, p0, Lcom/sonymobile/home/desktop/AutomaticDesktopModel$2;->this$0:Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/desktop/ModeMigrationDesktopSorter;->sort(Lcom/sonymobile/home/desktop/DesktopModel;I)V

    .line 185
    return-void
.end method
