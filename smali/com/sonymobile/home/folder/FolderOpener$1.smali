.class Lcom/sonymobile/home/folder/FolderOpener$1;
.super Lcom/sonymobile/home/folder/OpenFolderBackgroundView;
.source "FolderOpener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/folder/FolderOpener;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Landroid/content/res/Resources;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/FolderOpener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonymobile/home/folder/FolderOpener$1;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    invoke-direct {p0, p2}, Lcom/sonymobile/home/folder/OpenFolderBackgroundView;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    return-void
.end method


# virtual methods
.method public onClick(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/sonymobile/home/folder/OpenFolderBackgroundView;->onClick(FF)V

    .line 107
    iget-object v0, p0, Lcom/sonymobile/home/folder/FolderOpener$1;->this$0:Lcom/sonymobile/home/folder/FolderOpener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/folder/FolderOpener;->close(Z)V

    .line 108
    return-void
.end method
