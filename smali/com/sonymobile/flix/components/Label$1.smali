.class Lcom/sonymobile/flix/components/Label$1;
.super Landroid/text/DynamicLayout;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/flix/components/Label;->refreshLayoutedText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/flix/components/Label;


# direct methods
.method constructor <init>(Lcom/sonymobile/flix/components/Label;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 8
    .param p2, "x0"    # Ljava/lang/CharSequence;
    .param p3, "x1"    # Landroid/text/TextPaint;
    .param p4, "x2"    # I
    .param p5, "x3"    # Landroid/text/Layout$Alignment;
    .param p6, "x4"    # F
    .param p7, "x5"    # F
    .param p8, "x6"    # Z

    .prologue
    .line 485
    iput-object p1, p0, Lcom/sonymobile/flix/components/Label$1;->this$0:Lcom/sonymobile/flix/components/Label;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method


# virtual methods
.method public getLineCount()I
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/sonymobile/flix/components/Label$1;->this$0:Lcom/sonymobile/flix/components/Label;

    iget v0, v0, Lcom/sonymobile/flix/components/Label;->mMaxLines:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/flix/components/Label$1;->this$0:Lcom/sonymobile/flix/components/Label;

    iget v0, v0, Lcom/sonymobile/flix/components/Label;->mMaxLines:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v0

    goto :goto_0
.end method
