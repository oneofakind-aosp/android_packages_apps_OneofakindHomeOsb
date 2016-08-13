.class Lcom/sonymobile/home/search/SearchActivity$7;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/SearchActivity;->initConfiguration(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchActivity$7;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$7;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->finishWithResult(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/search/SearchActivity;->access$1400(Lcom/sonymobile/home/search/SearchActivity;ILandroid/content/Intent;)V

    .line 531
    return-void
.end method
