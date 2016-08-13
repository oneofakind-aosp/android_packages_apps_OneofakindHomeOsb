.class Lcom/sonymobile/home/apptray/AppTrayDropZoneView$1;
.super Ljava/lang/Object;
.source "AppTrayDropZoneView.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ComponentListeners$VisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->setAppTrayDropZoneSpaceCallback(Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayDropZoneView;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCullingChanged(Lcom/sonymobile/flix/components/Component;Z)V
    .locals 0
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "b"    # Z

    .prologue
    .line 116
    return-void
.end method

.method public onVisibilityChanged(Lcom/sonymobile/flix/components/Component;Z)V
    .locals 3
    .param p1, "component"    # Lcom/sonymobile/flix/components/Component;
    .param p2, "visible"    # Z

    .prologue
    .line 108
    if-eqz p2, :cond_0

    .line 109
    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->mAppTrayDropZoneSpaceCallback:Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->access$000(Lcom/sonymobile/home/apptray/AppTrayDropZoneView;)Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;->isSpaceAvailable()Z

    move-result v0

    .line 110
    .local v0, "isSpaceAvailable":Z
    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayDropZoneView$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayDropZoneView;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    # invokes: Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->setShowDesktopFull(Z)V
    invoke-static {v2, v1}, Lcom/sonymobile/home/apptray/AppTrayDropZoneView;->access$100(Lcom/sonymobile/home/apptray/AppTrayDropZoneView;Z)V

    .line 112
    .end local v0    # "isSpaceAvailable":Z
    :cond_0
    return-void

    .line 110
    .restart local v0    # "isSpaceAvailable":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
