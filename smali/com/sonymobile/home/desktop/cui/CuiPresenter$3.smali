.class Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;
.super Ljava/lang/Object;
.source "CuiPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addAppWidgetItem(Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

.field final synthetic val$appWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$cuiWidgetLeafItem:Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->val$className:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->val$user:Landroid/os/UserHandle;

    iput-object p5, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->val$cuiWidgetLeafItem:Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    iput-object p6, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->val$appWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppWidgetRegistered(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "cmp"    # Landroid/content/ComponentName;
    .param p2, "id"    # I

    .prologue
    .line 843
    new-instance v0, Lcom/sonymobile/home/data/WidgetItem;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->val$className:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->val$user:Landroid/os/UserHandle;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 844
    .local v0, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDesktopPageViewName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$500(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/WidgetItem;->setPageViewName(Ljava/lang/String;)V

    .line 846
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiCallbackHandler:Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$600(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->val$cuiWidgetLeafItem:Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    invoke-virtual {v2}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getSpanX()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->val$cuiWidgetLeafItem:Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;

    invoke-virtual {v3}, Lcom/sonymobile/home/cui/CuiGridWidgetLeafItem;->getSpanY()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;->onItemClicked(Lcom/sonymobile/home/data/Item;IIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->val$appWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->removeAppWidget(I)V

    .line 852
    :cond_0
    return-void
.end method

.method public onAppWidgetRegistrationFailed(Z)V
    .locals 3
    .param p1, "userInterrupted"    # Z

    .prologue
    .line 856
    if-nez p1, :cond_0

    .line 857
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$3;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$400(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08009a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 860
    :cond_0
    return-void
.end method
