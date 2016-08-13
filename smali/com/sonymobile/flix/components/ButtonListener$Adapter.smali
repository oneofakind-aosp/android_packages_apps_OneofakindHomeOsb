.class public abstract Lcom/sonymobile/flix/components/ButtonListener$Adapter;
.super Ljava/lang/Object;
.source "ButtonListener.java"

# interfaces
.implements Lcom/sonymobile/flix/components/ButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/ButtonListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 86
    return-void
.end method

.method public onDrag(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 94
    return-void
.end method

.method public onHoverEnter(Lcom/sonymobile/flix/components/Button;)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;

    .prologue
    .line 98
    return-void
.end method

.method public onHoverExit(Lcom/sonymobile/flix/components/Button;)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;

    .prologue
    .line 102
    return-void
.end method

.method public onLongPress(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 90
    return-void
.end method

.method public onPress(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 78
    return-void
.end method

.method public onRelease(Lcom/sonymobile/flix/components/Button;FF)V
    .locals 0
    .param p1, "button"    # Lcom/sonymobile/flix/components/Button;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 82
    return-void
.end method
