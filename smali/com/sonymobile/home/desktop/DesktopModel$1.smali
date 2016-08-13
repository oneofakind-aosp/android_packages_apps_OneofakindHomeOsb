.class Lcom/sonymobile/home/desktop/DesktopModel$1;
.super Ljava/lang/Object;
.source "DesktopModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopModel$1;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceBatchLoaded()V
    .locals 4

    .prologue
    .line 167
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$1;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    const/4 v3, 0x0

    # setter for: Lcom/sonymobile/home/desktop/DesktopModel;->mPendingLoadRequest:Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    invoke-static {v2, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->access$002(Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 168
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$1;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mNeedsResourceUpdate:Z
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->access$100(Lcom/sonymobile/home/desktop/DesktopModel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$1;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    const/4 v3, 0x0

    # setter for: Lcom/sonymobile/home/desktop/DesktopModel;->mNeedsResourceUpdate:Z
    invoke-static {v2, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->access$102(Lcom/sonymobile/home/desktop/DesktopModel;Z)Z

    .line 170
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$1;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    invoke-virtual {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->updateResources()V

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$1;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceBatchLoadedListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->access$200(Lcom/sonymobile/home/desktop/DesktopModel;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/sonymobile/home/desktop/DesktopModel$1;->this$0:Lcom/sonymobile/home/desktop/DesktopModel;

    # getter for: Lcom/sonymobile/home/desktop/DesktopModel;->mOnResourceBatchLoadedListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sonymobile/home/desktop/DesktopModel;->access$200(Lcom/sonymobile/home/desktop/DesktopModel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    .line 176
    .local v0, "callback":Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    invoke-interface {v0}, Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;->onResourceBatchLoaded()V

    goto :goto_0

    .line 179
    .end local v0    # "callback":Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
