.class public abstract Lcom/sonymobile/home/deletearea/DeleteDropZoneViewBase;
.super Lcom/sonymobile/flix/components/Component;
.source "DeleteDropZoneViewBase.java"


# instance fields
.field protected final mDropZone:Lcom/sonymobile/flix/components/Component;


# direct methods
.method public constructor <init>(Lcom/sonymobile/flix/components/Scene;)V
    .locals 2
    .param p1, "scene"    # Lcom/sonymobile/flix/components/Scene;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    .line 31
    new-instance v0, Lcom/sonymobile/flix/components/Component;

    invoke-direct {v0, p1}, Lcom/sonymobile/flix/components/Component;-><init>(Lcom/sonymobile/flix/components/Scene;)V

    iput-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneViewBase;->mDropZone:Lcom/sonymobile/flix/components/Component;

    .line 32
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneViewBase;->mDropZone:Lcom/sonymobile/flix/components/Component;

    const v1, 0x7f0f0018

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setId(I)V

    .line 33
    const v0, 0x7f0f0019

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneViewBase;->setId(I)V

    .line 34
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneViewBase;->mDropZone:Lcom/sonymobile/flix/components/Component;

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/deletearea/DeleteDropZoneViewBase;->addChild(Lcom/sonymobile/flix/components/Component;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getDropZone()Lcom/sonymobile/flix/components/Component;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/home/deletearea/DeleteDropZoneViewBase;->mDropZone:Lcom/sonymobile/flix/components/Component;

    return-object v0
.end method

.method public updateConfiguration()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
