.class public Lcom/sonymobile/flix/components/Component$DrawingState$Temps;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/Component$DrawingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Temps"
.end annotation


# instance fields
.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mRect:Landroid/graphics/RectF;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 3812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3813
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component$DrawingState$Temps;->mMatrix:Landroid/graphics/Matrix;

    .line 3815
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component$DrawingState$Temps;->mRect:Landroid/graphics/RectF;

    return-void
.end method
