.class Lcom/sonymobile/home/apptray/AppTrayModel$1;
.super Ljava/lang/Object;
.source "AppTrayModel.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/apptray/AppTrayModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTrayModel;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTrayModel;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTrayModel$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceBatchLoaded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mPreferences:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$000(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->shouldOwnOrderBeSortedAlphabetically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mPreferences:Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$000(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonymobile/home/apptray/AppTrayPreferenceManager;->setShouldOwnOrderBeSortedAlphabetically(Z)V

    .line 86
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayModel;->sortAlphabeticallyAndUpdateModel()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$100(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mResourceHandler:Lcom/sonymobile/home/model/ResourceHandler;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$400(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/apptray/AppTrayModel$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mOnResourceLoadedCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;
    invoke-static {v1}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$200(Lcom/sonymobile/home/apptray/AppTrayModel;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/apptray/AppTrayModel$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$300(Lcom/sonymobile/home/apptray/AppTrayModel;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/model/ResourceHandler;->addOnResourceLoadedCallback(Lcom/sonymobile/home/model/ResourceHandler$OnResourceLoadedCallback;Landroid/os/Handler;)V

    .line 94
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # invokes: Lcom/sonymobile/home/apptray/AppTrayModel;->notifyOnModelChanged()V
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$500(Lcom/sonymobile/home/apptray/AppTrayModel;)V

    .line 95
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mPendingLoadRequest:Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
    invoke-static {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$602(Lcom/sonymobile/home/apptray/AppTrayModel;Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # getter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mNeedsResourceUpdate:Z
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$700(Lcom/sonymobile/home/apptray/AppTrayModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    # setter for: Lcom/sonymobile/home/apptray/AppTrayModel;->mNeedsResourceUpdate:Z
    invoke-static {v0, v3}, Lcom/sonymobile/home/apptray/AppTrayModel;->access$702(Lcom/sonymobile/home/apptray/AppTrayModel;Z)Z

    .line 98
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTrayModel$1;->this$0:Lcom/sonymobile/home/apptray/AppTrayModel;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTrayModel;->updateResources()V

    .line 100
    :cond_1
    return-void
.end method
