.class public Lcom/sonymobile/flix/components/Component$DrawingState;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DrawingState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/flix/components/Component$DrawingState$Temps;
    }
.end annotation


# instance fields
.field protected mCamera3d:Landroid/graphics/Camera;

.field protected mCullingArea:Landroid/graphics/RectF;

.field protected mDescendantAlpha:F

.field protected mNext:Lcom/sonymobile/flix/components/Component$DrawingState;

.field protected mTemps:Lcom/sonymobile/flix/components/Component$DrawingState$Temps;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3826
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mDescendantAlpha:F

    .line 3829
    new-instance v0, Lcom/sonymobile/flix/components/Component$DrawingState$Temps;

    invoke-direct {v0}, Lcom/sonymobile/flix/components/Component$DrawingState$Temps;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mTemps:Lcom/sonymobile/flix/components/Component$DrawingState$Temps;

    .line 3830
    return-void
.end method

.method private constructor <init>(Lcom/sonymobile/flix/components/Component$DrawingState$Temps;)V
    .locals 1
    .param p1, "temps"    # Lcom/sonymobile/flix/components/Component$DrawingState$Temps;

    .prologue
    .line 3842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3826
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mDescendantAlpha:F

    .line 3843
    iput-object p1, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mTemps:Lcom/sonymobile/flix/components/Component$DrawingState$Temps;

    .line 3844
    return-void
.end method


# virtual methods
.method public createFrom(Lcom/sonymobile/flix/components/Component;)Lcom/sonymobile/flix/components/Component$DrawingState;
    .locals 3
    .param p1, "c"    # Lcom/sonymobile/flix/components/Component;

    .prologue
    .line 3847
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mNext:Lcom/sonymobile/flix/components/Component$DrawingState;

    if-nez v0, :cond_0

    .line 3848
    new-instance v0, Lcom/sonymobile/flix/components/Component$DrawingState;

    iget-object v1, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mTemps:Lcom/sonymobile/flix/components/Component$DrawingState$Temps;

    invoke-direct {v0, v1}, Lcom/sonymobile/flix/components/Component$DrawingState;-><init>(Lcom/sonymobile/flix/components/Component$DrawingState$Temps;)V

    iput-object v0, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mNext:Lcom/sonymobile/flix/components/Component$DrawingState;

    .line 3851
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mNext:Lcom/sonymobile/flix/components/Component$DrawingState;

    iget-object v0, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mCamera3d:Landroid/graphics/Camera;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/sonymobile/flix/components/Component;->mCamera3d:Landroid/graphics/Camera;

    :goto_0
    iput-object v0, v1, Lcom/sonymobile/flix/components/Component$DrawingState;->mCamera3d:Landroid/graphics/Camera;

    .line 3852
    iget-object v1, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mNext:Lcom/sonymobile/flix/components/Component$DrawingState;

    iget-object v0, p1, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sonymobile/flix/components/Component;->mCullingArea:Landroid/graphics/RectF;

    :goto_1
    iput-object v0, v1, Lcom/sonymobile/flix/components/Component$DrawingState;->mCullingArea:Landroid/graphics/RectF;

    .line 3853
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mNext:Lcom/sonymobile/flix/components/Component$DrawingState;

    iget v1, p1, Lcom/sonymobile/flix/components/Component;->mDescendantAlpha:F

    iget v2, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mDescendantAlpha:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/sonymobile/flix/components/Component$DrawingState;->mDescendantAlpha:F

    .line 3854
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mNext:Lcom/sonymobile/flix/components/Component$DrawingState;

    return-object v0

    .line 3851
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mCamera3d:Landroid/graphics/Camera;

    goto :goto_0

    .line 3852
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/flix/components/Component$DrawingState;->mCullingArea:Landroid/graphics/RectF;

    goto :goto_1
.end method
