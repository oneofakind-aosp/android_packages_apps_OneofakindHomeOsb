.class Lcom/sonymobile/home/folder/OpenFolderView$DimAnimation;
.super Lcom/sonymobile/flix/util/Animation;
.source "OpenFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/folder/OpenFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/folder/OpenFolderView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/folder/OpenFolderView;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sonymobile/home/folder/OpenFolderView$DimAnimation;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/folder/OpenFolderView;Lcom/sonymobile/home/folder/OpenFolderView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/folder/OpenFolderView;
    .param p2, "x1"    # Lcom/sonymobile/home/folder/OpenFolderView$1;

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/sonymobile/home/folder/OpenFolderView$DimAnimation;-><init>(Lcom/sonymobile/home/folder/OpenFolderView;)V

    return-void
.end method


# virtual methods
.method public onUpdate(FF)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "delta"    # F

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonymobile/home/folder/OpenFolderView$DimAnimation;->this$0:Lcom/sonymobile/home/folder/OpenFolderView;

    sget v1, Lcom/sonymobile/home/folder/OpenFolderView;->DIM_ALPHA:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    # setter for: Lcom/sonymobile/home/folder/OpenFolderView;->mDimColor:I
    invoke-static {v0, v1}, Lcom/sonymobile/home/folder/OpenFolderView;->access$602(Lcom/sonymobile/home/folder/OpenFolderView;I)I

    .line 252
    return-void
.end method
