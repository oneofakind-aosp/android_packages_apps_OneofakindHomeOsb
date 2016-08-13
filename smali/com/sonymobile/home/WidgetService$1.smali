.class Lcom/sonymobile/home/WidgetService$1;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/WidgetService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/WidgetService;

.field final synthetic val$appWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$desktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

.field final synthetic val$internalStartId:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/WidgetService;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/home/desktop/DesktopPresenter;I)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonymobile/home/WidgetService$1;->this$0:Lcom/sonymobile/home/WidgetService;

    iput-object p2, p0, Lcom/sonymobile/home/WidgetService$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/home/WidgetService$1;->val$className:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/home/WidgetService$1;->val$user:Landroid/os/UserHandle;

    iput-object p5, p0, Lcom/sonymobile/home/WidgetService$1;->val$appWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    iput-object p6, p0, Lcom/sonymobile/home/WidgetService$1;->val$desktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    iput p7, p0, Lcom/sonymobile/home/WidgetService$1;->val$internalStartId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppWidgetRegistered(Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "cmp"    # Landroid/content/ComponentName;
    .param p2, "id"    # I

    .prologue
    .line 85
    new-instance v2, Lcom/sonymobile/home/data/WidgetItem;

    iget-object v3, p0, Lcom/sonymobile/home/WidgetService$1;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonymobile/home/WidgetService$1;->val$className:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/home/WidgetService$1;->val$user:Landroid/os/UserHandle;

    invoke-direct {v2, p2, v3, v4, v5}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 88
    .local v2, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/WidgetService$1;->val$appWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v3, p2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->getDefaultSpanXY(I)[I

    move-result-object v1

    .line 90
    .local v1, "spanXY":[I
    iget-object v3, p0, Lcom/sonymobile/home/WidgetService$1;->val$desktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/sonymobile/home/desktop/DesktopPresenter;->addItemToDesktop(Lcom/sonymobile/home/data/Item;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/sonymobile/home/WidgetService$1;->val$appWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v2}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->removeAppWidget(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "spanXY":[I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/home/WidgetService$1;->this$0:Lcom/sonymobile/home/WidgetService;

    iget v4, p0, Lcom/sonymobile/home/WidgetService$1;->val$internalStartId:I

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/WidgetService;->stopSelf(I)V

    .line 99
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/sonymobile/home/WidgetService$1;->val$appWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v2}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->removeAppWidget(I)V

    goto :goto_0
.end method

.method public onAppWidgetRegistrationFailed(Z)V
    .locals 2
    .param p1, "userInterrupted"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonymobile/home/WidgetService$1;->this$0:Lcom/sonymobile/home/WidgetService;

    iget v1, p0, Lcom/sonymobile/home/WidgetService$1;->val$internalStartId:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/WidgetService;->stopSelf(I)V

    .line 104
    return-void
.end method
