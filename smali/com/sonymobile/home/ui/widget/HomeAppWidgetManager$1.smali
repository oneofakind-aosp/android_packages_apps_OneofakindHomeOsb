.class Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;
.super Lcom/sonymobile/flix/util/Worker$Task;
.source "HomeAppWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->registerAppWidgetAsync(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBindSuccessful:Z

.field private mId:I

.field private mIsConfigurationNeeded:Z

.field final synthetic this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

.field final synthetic val$appWidgetClassName:Ljava/lang/String;

.field final synthetic val$appWidgetPackage:Ljava/lang/String;

.field final synthetic val$callback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/os/Handler;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 388
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetClassName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$user:Landroid/os/UserHandle;

    iput-object p5, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$callback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

    iput-object p6, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Worker$Task;-><init>()V

    .line 390
    iput v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    .line 392
    iput-boolean v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mBindSuccessful:Z

    .line 394
    iput-boolean v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mIsConfigurationNeeded:Z

    return-void
.end method


# virtual methods
.method public onExecute()V
    .locals 6

    .prologue
    .line 398
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    iget-object v1, v1, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    .line 399
    iget v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    if-eqz v1, :cond_0

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetClassName:Ljava/lang/String;

    iget v4, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->bindAppWidgetId(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mBindSuccessful:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mBindSuccessful:Z

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    # invokes: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->isConfigurationNeeded(I)Z
    invoke-static {v1, v2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$000(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mIsConfigurationNeeded:Z

    .line 414
    :cond_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App widget does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/flix/debug/Logx;->w(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    iget-object v1, v1, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mHomeAppWidgetHost:Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;->deleteAppWidgetId(I)V

    .line 407
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    goto :goto_0
.end method

.method public onFinish()V
    .locals 11

    .prologue
    const/high16 v4, 0xff00000

    const/4 v2, 0x0

    .line 418
    iget v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    if-eqz v0, :cond_3

    .line 419
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mBindSuccessful:Z

    if-eqz v0, :cond_2

    .line 420
    iget-boolean v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mIsConfigurationNeeded:Z

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    # getter for: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;
    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$100(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)Lcom/sonymobile/home/IntentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    new-instance v7, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetClassName:Ljava/lang/String;

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .local v7, "component":Landroid/content/ComponentName;
    iget v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    or-int v3, v4, v0

    .line 430
    .local v3, "requestCode":I
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    # getter for: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mPendingWidgets:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$200(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;

    iget v5, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    iget-object v9, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$callback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

    iget-object v10, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$handler:Landroid/os/Handler;

    invoke-direct {v4, v5, v7, v9, v10}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;-><init>(ILandroid/content/ComponentName;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/os/Handler;)V

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    # getter for: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;
    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$100(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)Lcom/sonymobile/home/IntentHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-interface {v0, v3, v1}, Lcom/sonymobile/home/IntentHandler;->addActivityResultListener(ILcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;)V

    .line 433
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    # getter for: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;
    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$100(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)Lcom/sonymobile/home/IntentHandler;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    const/4 v4, 0x0

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/home/IntentHandler;->launchAppWidgetConfigureActivityForResult(IIILandroid/os/Bundle;Ljava/lang/String;)V

    .line 462
    .end local v3    # "requestCode":I
    .end local v7    # "component":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetClassName:Ljava/lang/String;

    iget v4, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    # invokes: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->createAppWidget(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonymobile/home/ui/widget/AppWidget;
    invoke-static {v0, v1, v2, v4}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$300(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Ljava/lang/String;Ljava/lang/String;I)Lcom/sonymobile/home/ui/widget/AppWidget;

    move-result-object v6

    .line 439
    .local v6, "appWidget":Lcom/sonymobile/home/ui/widget/AppWidget;
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    # getter for: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mRegisteredWidgets:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$400(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v8, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetClassName:Ljava/lang/String;

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .local v8, "componentName":Landroid/content/ComponentName;
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$callback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

    iget v4, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    # invokes: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->notifyAppWidgetRegistered(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/content/ComponentName;I)V
    invoke-static {v0, v1, v2, v8, v4}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$500(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 446
    .end local v6    # "appWidget":Lcom/sonymobile/home/ui/widget/AppWidget;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    # getter for: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;
    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$100(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)Lcom/sonymobile/home/IntentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v7, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetClassName:Ljava/lang/String;

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .restart local v7    # "component":Landroid/content/ComponentName;
    iget v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    or-int v3, v4, v0

    .line 451
    .restart local v3    # "requestCode":I
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    # getter for: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mPendingWidgets:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$200(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;

    iget v4, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$callback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

    iget-object v9, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$handler:Landroid/os/Handler;

    invoke-direct {v2, v4, v7, v5, v9}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$PendingAppWidget;-><init>(ILandroid/content/ComponentName;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/os/Handler;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    # getter for: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;
    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$100(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)Lcom/sonymobile/home/IntentHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-interface {v0, v3, v1}, Lcom/sonymobile/home/IntentHandler;->addActivityResultListener(ILcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;)V

    .line 454
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    # getter for: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;
    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$100(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)Lcom/sonymobile/home/IntentHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    iget v2, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->mId:I

    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$user:Landroid/os/UserHandle;

    # invokes: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getWidgetBindIntent(ILandroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/Intent;
    invoke-static {v1, v2, v7, v4}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$600(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;ILandroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v3, v2}, Lcom/sonymobile/home/IntentHandler;->launchActivityForResult(Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_0

    .line 460
    .end local v3    # "requestCode":I
    .end local v7    # "component":Landroid/content/ComponentName;
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->this$0:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$callback:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;

    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$1;->val$appWidgetPackage:Ljava/lang/String;

    # invokes: Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->notifyAppWidgetRegistrationFailed(Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v4, v5, v2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->access$700(Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Landroid/os/Handler;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
