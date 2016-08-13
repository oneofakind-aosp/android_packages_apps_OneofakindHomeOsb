.class Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;
.super Lcom/sonymobile/flix/util/Worker$Task;
.source "HomeAdvWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->loadWidgetAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

.field final synthetic this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$className:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$uuid:Ljava/util/UUID;

    iput-object p5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$handler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Worker$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()V
    .locals 7

    .prologue
    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$className:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->loadAdvWidgetProviderInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;

    move-result-object v1

    .line 159
    .local v1, "info":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    if-nez v1, :cond_0

    .line 174
    .end local v1    # "info":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    :goto_0
    return-void

    .line 163
    .restart local v1    # "info":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    # getter for: Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->access$000(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    # getter for: Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mAdvWidgetExceptionHandler:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;
    invoke-static {v4}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->access$100(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetFactory;->createInstance(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;)Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    move-result-object v2

    .line 165
    .local v2, "widget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setId(Ljava/util/UUID;)V

    .line 166
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    iget-object v3, v3, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setHostActivity(Landroid/app/Activity;)V

    .line 167
    new-instance v3, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$HomeAdvWidgetHost;

    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    invoke-direct {v3, v4}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$HomeAdvWidgetHost;-><init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->setHost(Lcom/oneofakind/advancedwidget/framework/AdvWidgetHost;)V

    .line 168
    invoke-virtual {v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->createClazz()V

    .line 169
    iput-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v1    # "info":Lcom/sonymobile/home/ui/widget/AdvWidgetProviderInfo;
    .end local v2    # "widget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$className:Ljava/lang/String;

    const-string v6, "Loading advanced widget async failed in onExecute due to "

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->logTrackAndPushExceptionToGA(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->createProxy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onInit()Z

    .line 189
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onCreate()Z

    .line 193
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onConfigure()I

    move-result v9

    .line 195
    .local v9, "result":I
    packed-switch v9, :pswitch_data_0

    .line 235
    .end local v9    # "result":I
    :goto_0
    return-void

    .line 197
    .restart local v9    # "result":I
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onConfigurationSuccess()V

    .line 198
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->createHostView()Z

    .line 200
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    # getter for: Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->access$200(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$uuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 202
    .local v8, "existingWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    if-eqz v8, :cond_0

    .line 203
    iput-object v8, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    # invokes: Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->notifyAdvWidgetLoaded(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->access$300(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v8    # "existingWidget":Lcom/sonymobile/home/ui/widget/HomeAdvWidget;
    .end local v9    # "result":I
    :catch_0
    move-exception v7

    .line 230
    .local v7, "e":Ljava/lang/RuntimeException;
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$className:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$uuid:Ljava/util/UUID;

    move v6, v10

    # invokes: Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->notifyAdvWidgetLoadingFailed(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Z)V
    invoke-static/range {v0 .. v6}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->access$500(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 232
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$className:Ljava/lang/String;

    const-string v3, "Loading advanced widget async failed in onFinish due to "

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->logTrackAndPushExceptionToGA(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v9    # "result":I
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    # getter for: Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->mPendingWidgets:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->access$400(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$uuid:Ljava/util/UUID;

    new-instance v2, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;

    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$handler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v5}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$PendingAdvWidget;-><init>(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Landroid/os/Handler;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onConfigurationFail()V

    .line 215
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->mWidget:Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->onRemove()Z

    .line 216
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$className:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$uuid:Ljava/util/UUID;

    const/4 v6, 0x1

    # invokes: Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->notifyAdvWidgetLoadingFailed(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Z)V
    invoke-static/range {v0 .. v6}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->access$500(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Z)V

    goto :goto_0

    .line 223
    .end local v9    # "result":I
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$listener:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;

    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$className:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$uuid:Ljava/util/UUID;

    const/4 v6, 0x0

    # invokes: Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->notifyAdvWidgetLoadingFailed(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Z)V
    invoke-static/range {v0 .. v6}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->access$500(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 225
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    const-string v1, "AdvWidget"

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$1;->val$className:Ljava/lang/String;

    const-string v4, "Loading advanced widget failed for "

    # invokes: Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->logAdvWidgetLoadingFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->access$600(Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
