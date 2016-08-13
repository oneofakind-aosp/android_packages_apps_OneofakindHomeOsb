.class Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;
.super Ljava/lang/Object;
.source "AppTrayDropZonePresenter.java"

# interfaces
.implements Lcom/sonymobile/home/transfer/DropTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApptrayDropZoneTarget"
.end annotation


# instance fields
.field private mEnableDropZone:Z

.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->mEnableDropZone:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;
    .param p2, "x1"    # Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;-><init>(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->disableDropZone()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->enableDropZone()V

    return-void
.end method

.method private disableDropZone()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->mEnableDropZone:Z

    .line 109
    return-void
.end method

.method private enableDropZone()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->mEnableDropZone:Z

    .line 113
    return-void
.end method

.method private isDropZoneEnabled()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->mEnableDropZone:Z

    return v0
.end method


# virtual methods
.method public drop(Lcom/sonymobile/home/transfer/Transferable;ILcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$DropCallback;)V
    .locals 2
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "actionSet"    # I
    .param p3, "transferImage"    # Lcom/sonymobile/flix/components/Image;
    .param p4, "dropCallback"    # Lcom/sonymobile/home/transfer/DropTarget$DropCallback;

    .prologue
    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p4, v0, v1}, Lcom/sonymobile/home/transfer/DropTarget$DropCallback;->dropFinished(ILcom/sonymobile/home/transfer/DropEvent;)V

    .line 80
    return-void
.end method

.method public enter(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)Z
    .locals 2
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferImage"    # Lcom/sonymobile/flix/components/Image;
    .param p3, "event"    # Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->isDropZoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZoneListener:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->access$200(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->isShowingDesktopFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->disableDropZone()V

    .line 86
    invoke-interface {p1, v1}, Lcom/sonymobile/home/transfer/Transferable;->setIsCancellable(Z)V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZoneListener:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;->onEnterDropZone()V

    .line 90
    :cond_0
    return v1
.end method

.method public exit(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/flix/components/Image;)V
    .locals 0
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferImage"    # Lcom/sonymobile/flix/components/Image;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->enableDropZone()V

    .line 105
    return-void
.end method

.method public over(Lcom/sonymobile/home/transfer/Transferable;Lcom/sonymobile/home/transfer/TransferView;Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;)V
    .locals 1
    .param p1, "transferable"    # Lcom/sonymobile/home/transfer/Transferable;
    .param p2, "transferView"    # Lcom/sonymobile/home/transfer/TransferView;
    .param p3, "event"    # Lcom/sonymobile/home/transfer/DropTarget$TransferEvent;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->isDropZoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZoneListener:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZone:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->access$200(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->isShowingDesktopFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->disableDropZone()V

    .line 97
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sonymobile/home/transfer/Transferable;->setIsCancellable(Z)V

    .line 98
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$ApptrayDropZoneTarget;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->mDropZoneListener:Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;->access$100(Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter;)Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/apptray/AppTrayDropZonePresenter$AppTrayDropZoneListener;->onEnterDropZone()V

    .line 100
    :cond_0
    return-void
.end method
