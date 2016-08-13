.class Lcom/sonymobile/home/desktop/DesktopPresenter$6$1;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter$6;->onResourceBatchLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$6;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter$6;)V
    .locals 0

    .prologue
    .line 1673
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$6$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$6$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$6;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$6;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopModel:Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$6$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$6;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$6;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$6200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->removeOnResourceBatchLoadedListener(Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;)V

    .line 1678
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$6$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$6;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$6;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mOnResourceBatchLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$6202(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    .line 1679
    return-void
.end method
