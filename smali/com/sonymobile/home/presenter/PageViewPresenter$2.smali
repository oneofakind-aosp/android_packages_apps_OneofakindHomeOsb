.class Lcom/sonymobile/home/presenter/PageViewPresenter$2;
.super Ljava/lang/Object;
.source "PageViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/presenter/PageViewPresenter;->launchApplication(Lcom/sonymobile/home/data/ActivityItem;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/presenter/PageViewPresenter;

.field final synthetic val$item:Lcom/sonymobile/home/data/ActivityItem;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/presenter/PageViewPresenter;Lcom/sonymobile/home/data/ActivityItem;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$2;->this$0:Lcom/sonymobile/home/presenter/PageViewPresenter;

    iput-object p2, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$2;->val$item:Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 502
    iget-object v1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$2;->this$0:Lcom/sonymobile/home/presenter/PageViewPresenter;

    # getter for: Lcom/sonymobile/home/presenter/PageViewPresenter;->mModel:Lcom/sonymobile/home/model/Model;
    invoke-static {v1}, Lcom/sonymobile/home/presenter/PageViewPresenter;->access$100(Lcom/sonymobile/home/presenter/PageViewPresenter;)Lcom/sonymobile/home/model/Model;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$2;->val$item:Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/model/Model;->getResource(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v0

    .line 503
    .local v0, "resourceItem":Lcom/sonymobile/home/model/ResourceItem;
    iget-object v1, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$2;->this$0:Lcom/sonymobile/home/presenter/PageViewPresenter;

    iget-object v2, v1, Lcom/sonymobile/home/presenter/PageViewPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/home/presenter/PageViewPresenter$2;->val$item:Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sonymobile/home/model/ResourceItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/sonymobile/home/presenter/PageViewPresenter;->handleActivityNotFound(Landroid/content/Context;Lcom/sonymobile/home/data/Item;Ljava/lang/String;)V

    .line 504
    return-void

    .line 503
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
