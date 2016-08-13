.class final Lcom/sonymobile/home/model/EnsureSearchIconExists$1;
.super Ljava/lang/Object;
.source "EnsureSearchIconExists.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/EnsureSearchIconExists;->ensureExistOnceModelsAreLoaded(Lcom/sonymobile/home/HomeApplication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$homeApplication:Lcom/sonymobile/home/HomeApplication;

.field final synthetic val$models:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/sonymobile/home/HomeApplication;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonymobile/home/model/EnsureSearchIconExists$1;->val$models:Ljava/util/List;

    iput-object p2, p0, Lcom/sonymobile/home/model/EnsureSearchIconExists$1;->val$homeApplication:Lcom/sonymobile/home/HomeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v2, p0, Lcom/sonymobile/home/model/EnsureSearchIconExists$1;->val$models:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/model/Model;

    .line 44
    .local v1, "model":Lcom/sonymobile/home/model/Model;
    instance-of v2, v1, Lcom/sonymobile/home/desktop/AutomaticDesktopModel;

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/sonymobile/home/model/EnsureSearchIconExists$1;->val$homeApplication:Lcom/sonymobile/home/HomeApplication;

    check-cast v1, Lcom/sonymobile/home/desktop/DesktopModel;

    .end local v1    # "model":Lcom/sonymobile/home/model/Model;
    # invokes: Lcom/sonymobile/home/model/EnsureSearchIconExists;->addSearchIconIfMissing(Lcom/sonymobile/home/HomeApplication;Lcom/sonymobile/home/desktop/DesktopModel;)V
    invoke-static {v2, v1}, Lcom/sonymobile/home/model/EnsureSearchIconExists;->access$000(Lcom/sonymobile/home/HomeApplication;Lcom/sonymobile/home/desktop/DesktopModel;)V

    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method
