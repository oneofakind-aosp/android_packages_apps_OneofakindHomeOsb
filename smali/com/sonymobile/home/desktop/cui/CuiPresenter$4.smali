.class Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;
.super Ljava/lang/Object;
.source "CuiPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/cui/CuiPresenter;->addAdvWidgetItem(Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

.field final synthetic val$advWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

.field final synthetic val$spanX:I

.field final synthetic val$spanY:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/cui/CuiPresenter;IILcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    iput p2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;->val$spanX:I

    iput p3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;->val$spanY:I

    iput-object p4, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;->val$advWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvWidgetLoaded(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)V
    .locals 5
    .param p1, "advWidget"    # Lcom/sonymobile/home/ui/widget/HomeAdvWidget;

    .prologue
    .line 879
    new-instance v0, Lcom/sonymobile/home/data/AdvWidgetItem;

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/home/ui/widget/HomeAdvWidget;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/data/AdvWidgetItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    .line 882
    .local v0, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mDesktopPageViewName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$500(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/data/AdvWidgetItem;->setPageViewName(Ljava/lang/String;)V

    .line 884
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mCuiCallbackHandler:Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$600(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;->val$spanX:I

    iget v3, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;->val$spanY:I

    const/4 v4, 0x1

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/sonymobile/home/desktop/cui/CuiCallbackHandler;->onItemClicked(Lcom/sonymobile/home/data/Item;IIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;->val$advWidgetManager:Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->removeWidget(Ljava/util/UUID;)V

    .line 889
    :cond_0
    return-void
.end method

.method public onAdvWidgetLoadingFailed(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 897
    iget-object v0, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$400(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/cui/CuiPresenter$4;->this$0:Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    # getter for: Lcom/sonymobile/home/desktop/cui/CuiPresenter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->access$400(Lcom/sonymobile/home/desktop/cui/CuiPresenter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 900
    return-void
.end method

.method public onAdvWidgetLoadingFailedSilent(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 906
    return-void
.end method
