.class Lcom/sonymobile/home/apptray/AppTray$1;
.super Ljava/lang/Object;
.source "AppTray.java"

# interfaces
.implements Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTray;-><init>(Lcom/sonymobile/flix/components/Scene;Landroid/content/Context;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;ILcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/home/folder/FolderOpener;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Lcom/sonymobile/home/apptray/AppTrayListener;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTray;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTray;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTray$1;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterDropZone()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$1;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    # invokes: Lcom/sonymobile/home/apptray/AppTray;->closeAppTrayAndMoveTransferable()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTray;->access$000(Lcom/sonymobile/home/apptray/AppTray;)V

    .line 128
    return-void
.end method
