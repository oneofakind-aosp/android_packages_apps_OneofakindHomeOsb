.class public Lcom/sonymobile/flix/components/Scene$UpdateRunnable;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/flix/components/Scene;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 0

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/sonymobile/flix/components/Scene$UpdateRunnable;->this$0:Lcom/sonymobile/flix/components/Scene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene$UpdateRunnable;->this$0:Lcom/sonymobile/flix/components/Scene;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonymobile/flix/components/Scene;->mNewUpdateScheduled:Z

    .line 1211
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene$UpdateRunnable;->this$0:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->update()V

    .line 1212
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene$UpdateRunnable;->this$0:Lcom/sonymobile/flix/components/Scene;

    iget-object v0, v0, Lcom/sonymobile/flix/components/Scene;->mScheduler:Lcom/sonymobile/flix/util/Scheduler;

    invoke-virtual {v0}, Lcom/sonymobile/flix/util/Scheduler;->hasRegularTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene$UpdateRunnable;->this$0:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->scheduleUpdate()V

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene$UpdateRunnable;->this$0:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->autoInvalidate()V

    .line 1216
    return-void
.end method
