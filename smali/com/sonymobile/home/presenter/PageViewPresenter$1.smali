.class Lcom/sonymobile/home/presenter/PageViewPresenter$1;
.super Ljava/lang/Object;
.source "PageViewPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/presenter/PageViewPresenter;->showSystemDeleteDialog(Lcom/sonymobile/home/data/ActivityItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/presenter/PageViewPresenter;

.field final synthetic val$item:Lcom/sonymobile/home/data/ActivityItem;

.field final synthetic val$uninstallRequestCode:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/presenter/PageViewPresenter;ILcom/sonymobile/home/data/ActivityItem;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$1;->this$0:Lcom/sonymobile/home/presenter/PageViewPresenter;

    iput p2, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$1;->val$uninstallRequestCode:I

    iput-object p3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$1;->val$item:Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 302
    iget v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$1;->val$uninstallRequestCode:I

    if-ne p1, v3, :cond_0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 304
    iget-object v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$1;->val$item:Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {v3}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$1;->val$item:Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {v3}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "className":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$1;->val$item:Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {v3}, Lcom/sonymobile/home/data/ActivityItem;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 307
    .local v2, "user":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$1;->this$0:Lcom/sonymobile/home/presenter/PageViewPresenter;

    # invokes: Lcom/sonymobile/home/presenter/PageViewPresenter;->trackUninstallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    invoke-static {v3, v1, v0, v2}, Lcom/sonymobile/home/presenter/PageViewPresenter;->access$000(Lcom/sonymobile/home/presenter/PageViewPresenter;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 309
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "user":Landroid/os/UserHandle;
    :cond_0
    return-void
.end method
