.class public Lcom/sonymobile/flix/components/Scene$SceneScheduler;
.super Lcom/sonymobile/flix/util/Scheduler;
.source "Scene.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Scheduler$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SceneScheduler"
.end annotation


# instance fields
.field private final mScene:Lcom/sonymobile/flix/components/Scene;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 1153
    invoke-direct {p0}, Lcom/sonymobile/flix/util/Scheduler;-><init>()V

    .line 1154
    iput-object p1, p0, Lcom/sonymobile/flix/components/Scene$SceneScheduler;->mScene:Lcom/sonymobile/flix/components/Scene;

    .line 1155
    return-void
.end method


# virtual methods
.method protected onTaskAdded(Lcom/sonymobile/flix/util/Scheduler$Task;)V
    .locals 1
    .param p1, "task"    # Lcom/sonymobile/flix/util/Scheduler$Task;

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/sonymobile/flix/components/Scene$SceneScheduler;->mScene:Lcom/sonymobile/flix/components/Scene;

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->scheduleUpdate()V

    .line 1160
    return-void
.end method

.method public onUpdate(J)Z
    .locals 1
    .param p1, "now"    # J

    .prologue
    .line 1164
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/flix/components/Scene$SceneScheduler;->update(J)V

    .line 1165
    const/4 v0, 0x1

    return v0
.end method
