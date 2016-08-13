.class public Lcom/sonymobile/flix/components/Scene$DrawingStateStack;
.super Ljava/lang/ThreadLocal;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DrawingStateStack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/sonymobile/flix/components/Component$DrawingState;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1169
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/sonymobile/flix/components/Component$DrawingState;
    .locals 1

    .prologue
    .line 1172
    new-instance v0, Lcom/sonymobile/flix/components/Component$DrawingState;

    invoke-direct {v0}, Lcom/sonymobile/flix/components/Component$DrawingState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1169
    invoke-virtual {p0}, Lcom/sonymobile/flix/components/Scene$DrawingStateStack;->initialValue()Lcom/sonymobile/flix/components/Component$DrawingState;

    move-result-object v0

    return-object v0
.end method
