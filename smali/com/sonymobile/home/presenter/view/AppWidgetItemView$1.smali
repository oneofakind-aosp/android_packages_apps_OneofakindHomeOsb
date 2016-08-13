.class final Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;
.super Ljava/lang/Object;
.source "AppWidgetItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->scheduleRetryInitAppWidgetHostView(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AppWidget;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appWidget:Lcom/sonymobile/home/ui/widget/AppWidget;

.field final synthetic val$attemptNbr:I

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(ILcom/sonymobile/home/ui/widget/AppWidget;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 225
    iput p1, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$attemptNbr:I

    iput-object p2, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$appWidget:Lcom/sonymobile/home/ui/widget/AppWidget;

    iput-object p3, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 228
    sget-object v6, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$attemptNbr:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " loading app widget host for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$appWidget:Lcom/sonymobile/home/ui/widget/AppWidget;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v6, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$appWidget:Lcom/sonymobile/home/ui/widget/AppWidget;

    invoke-virtual {v6}, Lcom/sonymobile/home/ui/widget/AppWidget;->getAppWidgetHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    .line 231
    .local v3, "hostView":Landroid/appwidget/AppWidgetHostView;
    if-nez v3, :cond_0

    .line 233
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$appWidget:Lcom/sonymobile/home/ui/widget/AppWidget;

    invoke-virtual {v6}, Lcom/sonymobile/home/ui/widget/AppWidget;->getAppWidgetId()I

    move-result v4

    .line 234
    .local v4, "id":I
    iget-object v6, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetHostFactory;->createInstance(Landroid/content/Context;)Lcom/sonymobile/home/ui/widget/HomeAppWidgetHost;

    move-result-object v2

    .line 235
    .local v2, "host":Landroid/appwidget/AppWidgetHost;
    iget-object v6, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$context:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 236
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 237
    .local v5, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v5, :cond_0

    .line 238
    iget-object v6, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v6, v4, v5}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 246
    .end local v0    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v2    # "host":Landroid/appwidget/AppWidgetHost;
    .end local v4    # "id":I
    .end local v5    # "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 248
    sget-object v6, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$attemptNbr:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " succeeded."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v6, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$appWidget:Lcom/sonymobile/home/ui/widget/AppWidget;

    iget v7, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$attemptNbr:I

    # invokes: Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->trackWidgetLoadSuccess(Lcom/sonymobile/home/ui/widget/AppWidget;I)V
    invoke-static {v6, v7}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->access$000(Lcom/sonymobile/home/ui/widget/AppWidget;I)V

    .line 256
    :goto_1
    return-void

    .line 240
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$attemptNbr:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 250
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget v6, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$attemptNbr:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_2

    .line 251
    sget-object v6, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$attemptNbr:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed, trying again."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v6, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$appWidget:Lcom/sonymobile/home/ui/widget/AppWidget;

    iget v8, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$attemptNbr:I

    add-int/lit8 v8, v8, 0x1

    # invokes: Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->scheduleRetryInitAppWidgetHostView(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AppWidget;I)V
    invoke-static {v6, v7, v8}, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->access$100(Landroid/content/Context;Lcom/sonymobile/home/ui/widget/AppWidget;I)V

    goto :goto_1

    .line 254
    :cond_2
    sget-object v6, Lcom/sonymobile/home/presenter/view/AppWidgetItemView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sonymobile/home/presenter/view/AppWidgetItemView$1;->val$attemptNbr:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed, giving up."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
