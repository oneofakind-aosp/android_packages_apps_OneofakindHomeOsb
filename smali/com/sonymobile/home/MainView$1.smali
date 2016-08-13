.class Lcom/sonymobile/home/MainView$1;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Lcom/sonymobile/home/apptray/AppTrayDropZoneView$AppTrayDropZoneSpaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/MainView;->onSceneCreated(Lcom/sonymobile/flix/components/Scene;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/MainView;

.field final synthetic val$desktop:Lcom/sonymobile/home/desktop/Desktop;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/MainView;Lcom/sonymobile/home/desktop/Desktop;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/sonymobile/home/MainView$1;->this$0:Lcom/sonymobile/home/MainView;

    iput-object p2, p0, Lcom/sonymobile/home/MainView$1;->val$desktop:Lcom/sonymobile/home/desktop/Desktop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSpaceAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 302
    iget-object v1, p0, Lcom/sonymobile/home/MainView$1;->this$0:Lcom/sonymobile/home/MainView;

    iget-object v1, v1, Lcom/sonymobile/home/MainView;->mTransferView:Lcom/sonymobile/home/transfer/TransferView;

    invoke-virtual {v1}, Lcom/sonymobile/home/transfer/TransferView;->canBePutIntoAFolder()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/MainView$1;->val$desktop:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/Desktop;->getPresenter()Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isSpaceAvailable(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
